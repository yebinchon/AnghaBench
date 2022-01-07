
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {int * dma_area; } ;


 int dprintk (char*) ;
 int vfree (int *) ;

__attribute__((used)) static int snd_cobalt_pcm_hw_free(struct snd_pcm_substream *substream)
{
 if (substream->runtime->dma_area) {
  dprintk("freeing pcm capture region\n");
  vfree(substream->runtime->dma_area);
  substream->runtime->dma_area = ((void*)0);
 }

 return 0;
}
