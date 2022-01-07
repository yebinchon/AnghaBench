
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_tm6000_card {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {scalar_t__ dma_bytes; int * dma_area; } ;


 int dprintk (int,char*) ;
 struct snd_tm6000_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int vfree (int *) ;

__attribute__((used)) static void dsp_buffer_free(struct snd_pcm_substream *substream)
{
 struct snd_tm6000_card *chip = snd_pcm_substream_chip(substream);

 dprintk(2, "Freeing buffer\n");

 vfree(substream->runtime->dma_area);
 substream->runtime->dma_area = ((void*)0);
 substream->runtime->dma_bytes = 0;
}
