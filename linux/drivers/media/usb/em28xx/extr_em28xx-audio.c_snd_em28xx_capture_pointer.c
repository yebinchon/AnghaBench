
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int slock; int hwptr_done_capture; } ;
struct em28xx {TYPE_1__ adev; scalar_t__ disconnected; } ;
typedef int snd_pcm_uframes_t ;


 int SNDRV_PCM_POS_XRUN ;
 struct em28xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static snd_pcm_uframes_t snd_em28xx_capture_pointer(struct snd_pcm_substream
          *substream)
{
 unsigned long flags;
 struct em28xx *dev;
 snd_pcm_uframes_t hwptr_done;

 dev = snd_pcm_substream_chip(substream);
 if (dev->disconnected)
  return SNDRV_PCM_POS_XRUN;

 spin_lock_irqsave(&dev->adev.slock, flags);
 hwptr_done = dev->adev.hwptr_done_capture;
 spin_unlock_irqrestore(&dev->adev.slock, flags);

 return hwptr_done;
}
