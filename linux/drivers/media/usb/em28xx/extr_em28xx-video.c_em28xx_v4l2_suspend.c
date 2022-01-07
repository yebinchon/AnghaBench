
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx {TYPE_1__* intf; int has_video; scalar_t__ is_audio_only; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 int em28xx_stop_urbs (struct em28xx*) ;

__attribute__((used)) static int em28xx_v4l2_suspend(struct em28xx *dev)
{
 if (dev->is_audio_only)
  return 0;

 if (!dev->has_video)
  return 0;

 dev_info(&dev->intf->dev, "Suspending video extension\n");
 em28xx_stop_urbs(dev);
 return 0;
}
