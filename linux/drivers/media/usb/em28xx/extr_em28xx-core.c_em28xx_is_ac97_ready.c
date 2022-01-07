
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx {TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EM28XX_AC97_XFER_TIMEOUT ;
 int EM28XX_R43_AC97BUSY ;
 int dev_warn (int *,char*) ;
 int em28xx_read_reg (struct em28xx*,int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;

__attribute__((used)) static int em28xx_is_ac97_ready(struct em28xx *dev)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(EM28XX_AC97_XFER_TIMEOUT);
 int ret;


 while (time_is_after_jiffies(timeout)) {
  ret = em28xx_read_reg(dev, EM28XX_R43_AC97BUSY);
  if (ret < 0)
   return ret;

  if (!(ret & 0x01))
   return 0;
  msleep(5);
 }

 dev_warn(&dev->intf->dev,
   "AC97 command still being executed: not handled properly!\n");
 return -EBUSY;
}
