
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_dev {int audio_enabled; int lock; int dma_delay_timer; struct tw686x_audio_channel* audio_channels; } ;
struct tw686x_audio_channel {int lock; int ** curr_bufs; scalar_t__ ch; } ;
struct snd_pcm_substream {size_t number; } ;


 scalar_t__ AUDIO_CHANNEL_OFFSET ;
 int EINVAL ;
 int EIO ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct tw686x_dev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tw686x_disable_channel (struct tw686x_dev*,scalar_t__) ;
 int tw686x_enable_channel (struct tw686x_dev*,scalar_t__) ;

__attribute__((used)) static int tw686x_pcm_trigger(struct snd_pcm_substream *ss, int cmd)
{
 struct tw686x_dev *dev = snd_pcm_substream_chip(ss);
 struct tw686x_audio_channel *ac = &dev->audio_channels[ss->number];
 unsigned long flags;
 int err = 0;

 switch (cmd) {
 case 129:
  if (ac->curr_bufs[0] && ac->curr_bufs[1]) {
   spin_lock_irqsave(&dev->lock, flags);
   dev->audio_enabled = 1;
   tw686x_enable_channel(dev,
    AUDIO_CHANNEL_OFFSET + ac->ch);
   spin_unlock_irqrestore(&dev->lock, flags);

   mod_timer(&dev->dma_delay_timer,
      jiffies + msecs_to_jiffies(100));
  } else {
   err = -EIO;
  }
  break;
 case 128:
  spin_lock_irqsave(&dev->lock, flags);
  dev->audio_enabled = 0;
  tw686x_disable_channel(dev, AUDIO_CHANNEL_OFFSET + ac->ch);
  spin_unlock_irqrestore(&dev->lock, flags);

  spin_lock_irqsave(&ac->lock, flags);
  ac->curr_bufs[0] = ((void*)0);
  ac->curr_bufs[1] = ((void*)0);
  spin_unlock_irqrestore(&ac->lock, flags);
  break;
 default:
  err = -EINVAL;
 }
 return err;
}
