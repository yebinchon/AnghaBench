
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int dummy; } ;


 int B53_CTRL_PAGE ;
 int B53_FAST_AGE_CTRL ;
 int ETIMEDOUT ;
 int FAST_AGE_DONE ;
 int FAST_AGE_DYNAMIC ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int b53_flush_arl(struct b53_device *dev, u8 mask)
{
 unsigned int i;

 b53_write8(dev, B53_CTRL_PAGE, B53_FAST_AGE_CTRL,
     FAST_AGE_DONE | FAST_AGE_DYNAMIC | mask);

 for (i = 0; i < 10; i++) {
  u8 fast_age_ctrl;

  b53_read8(dev, B53_CTRL_PAGE, B53_FAST_AGE_CTRL,
     &fast_age_ctrl);

  if (!(fast_age_ctrl & FAST_AGE_DONE))
   goto out;

  msleep(1);
 }

 return -ETIMEDOUT;
out:

 b53_write8(dev, B53_CTRL_PAGE, B53_FAST_AGE_CTRL, FAST_AGE_DYNAMIC);
 return 0;
}
