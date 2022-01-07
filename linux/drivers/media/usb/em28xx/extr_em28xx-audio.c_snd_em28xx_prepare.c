
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {scalar_t__ capture_transfer_done; scalar_t__ hwptr_done_capture; } ;
struct em28xx {TYPE_1__ adev; scalar_t__ disconnected; } ;


 int ENODEV ;
 struct em28xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_em28xx_prepare(struct snd_pcm_substream *substream)
{
 struct em28xx *dev = snd_pcm_substream_chip(substream);

 if (dev->disconnected)
  return -ENODEV;

 dev->adev.hwptr_done_capture = 0;
 dev->adev.capture_transfer_done = 0;

 return 0;
}
