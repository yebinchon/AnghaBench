
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx {TYPE_1__* intf; int has_video; scalar_t__ is_audio_only; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;

__attribute__((used)) static int em28xx_v4l2_resume(struct em28xx *dev)
{
 if (dev->is_audio_only)
  return 0;

 if (!dev->has_video)
  return 0;

 dev_info(&dev->intf->dev, "Resuming video extension\n");

 return 0;
}
