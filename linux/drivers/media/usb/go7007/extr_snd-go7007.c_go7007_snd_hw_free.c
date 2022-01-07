
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct go7007 {int * audio_deliver; } ;
struct TYPE_2__ {scalar_t__ dma_bytes; int dma_area; } ;


 struct go7007* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int vfree (int ) ;

__attribute__((used)) static int go7007_snd_hw_free(struct snd_pcm_substream *substream)
{
 struct go7007 *go = snd_pcm_substream_chip(substream);

 go->audio_deliver = ((void*)0);
 if (substream->runtime->dma_bytes > 0)
  vfree(substream->runtime->dma_area);
 substream->runtime->dma_bytes = 0;
 return 0;
}
