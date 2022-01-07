
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_tm6000_card {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {int dma_bytes; scalar_t__ dma_area; } ;


 int ENOMEM ;
 int dprintk (int,char*) ;
 int dsp_buffer_free (struct snd_pcm_substream*) ;
 struct snd_tm6000_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 scalar_t__ vmalloc (int) ;

__attribute__((used)) static int dsp_buffer_alloc(struct snd_pcm_substream *substream, int size)
{
 struct snd_tm6000_card *chip = snd_pcm_substream_chip(substream);

 dprintk(2, "Allocating buffer\n");

 if (substream->runtime->dma_area) {
  if (substream->runtime->dma_bytes > size)
   return 0;

  dsp_buffer_free(substream);
 }

 substream->runtime->dma_area = vmalloc(size);
 if (!substream->runtime->dma_area)
  return -ENOMEM;

 substream->runtime->dma_bytes = size;

 return 0;
}
