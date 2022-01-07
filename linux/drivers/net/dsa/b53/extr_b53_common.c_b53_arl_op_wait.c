
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int dev; } ;


 int ARLTBL_START_DONE ;
 int B53_ARLIO_PAGE ;
 int B53_ARLTBL_RW_CTRL ;
 int ETIMEDOUT ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int dev_warn (int ,char*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int b53_arl_op_wait(struct b53_device *dev)
{
 unsigned int timeout = 10;
 u8 reg;

 do {
  b53_read8(dev, B53_ARLIO_PAGE, B53_ARLTBL_RW_CTRL, &reg);
  if (!(reg & ARLTBL_START_DONE))
   return 0;

  usleep_range(1000, 2000);
 } while (timeout--);

 dev_warn(dev->dev, "timeout waiting for ARL to finish: 0x%02x\n", reg);

 return -ETIMEDOUT;
}
