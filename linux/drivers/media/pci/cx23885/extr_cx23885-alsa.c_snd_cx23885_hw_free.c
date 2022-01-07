
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct cx23885_audio_dev {int dummy; } ;
struct TYPE_2__ {int * dma_area; } ;


 int dsp_buffer_free (struct cx23885_audio_dev*) ;
 struct cx23885_audio_dev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cx23885_hw_free(struct snd_pcm_substream *substream)
{

 struct cx23885_audio_dev *chip = snd_pcm_substream_chip(substream);

 if (substream->runtime->dma_area) {
  dsp_buffer_free(chip);
  substream->runtime->dma_area = ((void*)0);
 }

 return 0;
}
