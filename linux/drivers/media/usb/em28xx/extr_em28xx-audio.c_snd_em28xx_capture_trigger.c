
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int wq_trigger; int stream_started; } ;
struct em28xx {TYPE_1__ adev; scalar_t__ disconnected; } ;


 int EINVAL ;
 int ENODEV ;






 int atomic_set (int *,int) ;
 int schedule_work (int *) ;
 struct em28xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_em28xx_capture_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
 struct em28xx *dev = snd_pcm_substream_chip(substream);
 int retval = 0;

 if (dev->disconnected)
  return -ENODEV;

 switch (cmd) {
 case 132:
 case 131:
 case 130:
  atomic_set(&dev->adev.stream_started, 1);
  break;
 case 133:
 case 128:
 case 129:
  atomic_set(&dev->adev.stream_started, 0);
  break;
 default:
  retval = -EINVAL;
 }
 schedule_work(&dev->adev.wq_trigger);
 return retval;
}
