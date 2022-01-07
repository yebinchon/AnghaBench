
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {size_t dma_bytes; scalar_t__ dma_area; } ;
struct cx231xx {int dev; } ;


 int ENOMEM ;
 int dev_dbg (int ,char*) ;
 struct cx231xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int vfree (scalar_t__) ;
 scalar_t__ vmalloc (size_t) ;

__attribute__((used)) static int snd_pcm_alloc_vmalloc_buffer(struct snd_pcm_substream *subs,
     size_t size)
{
 struct snd_pcm_runtime *runtime = subs->runtime;
 struct cx231xx *dev = snd_pcm_substream_chip(subs);

 dev_dbg(dev->dev, "Allocating vbuffer\n");
 if (runtime->dma_area) {
  if (runtime->dma_bytes > size)
   return 0;

  vfree(runtime->dma_area);
 }
 runtime->dma_area = vmalloc(size);
 if (!runtime->dma_area)
  return -ENOMEM;

 runtime->dma_bytes = size;

 return 0;
}
