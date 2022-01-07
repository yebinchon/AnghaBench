
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct cx23885_audio_dev {int lock; } ;


 int EINVAL ;


 int cx23885_start_audio_dma (struct cx23885_audio_dev*) ;
 int cx23885_stop_audio_dma (struct cx23885_audio_dev*) ;
 struct cx23885_audio_dev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_cx23885_card_trigger(struct snd_pcm_substream *substream,
 int cmd)
{
 struct cx23885_audio_dev *chip = snd_pcm_substream_chip(substream);
 int err;


 spin_lock(&chip->lock);

 switch (cmd) {
 case 129:
  err = cx23885_start_audio_dma(chip);
  break;
 case 128:
  err = cx23885_stop_audio_dma(chip);
  break;
 default:
  err = -EINVAL;
  break;
 }

 spin_unlock(&chip->lock);

 return err;
}
