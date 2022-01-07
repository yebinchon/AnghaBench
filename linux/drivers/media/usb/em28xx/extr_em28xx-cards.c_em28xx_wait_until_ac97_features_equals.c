
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx {TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int AC97_POWERDOWN ;
 int AC97_RESET ;
 int ETIMEDOUT ;
 int dev_warn (int *,char*) ;
 int em28xx_read_ac97 (struct em28xx*,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;

__attribute__((used)) static int em28xx_wait_until_ac97_features_equals(struct em28xx *dev,
        int expected_feat)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(2000);
 int feat, powerdown;

 while (time_is_after_jiffies(timeout)) {
  feat = em28xx_read_ac97(dev, AC97_RESET);
  if (feat < 0)
   return feat;

  powerdown = em28xx_read_ac97(dev, AC97_POWERDOWN);
  if (powerdown < 0)
   return powerdown;

  if (feat == expected_feat && feat != powerdown)
   return 0;

  msleep(50);
 }

 dev_warn(&dev->intf->dev, "AC97 registers access is not reliable !\n");
 return -ETIMEDOUT;
}
