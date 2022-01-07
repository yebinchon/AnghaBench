
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct cx231xx {int dummy; } ;


 int EIO ;
 int dprintk (int,char*,int) ;
 int get_itvc_reg (struct cx231xx*,int,int*) ;
 int msleep (int) ;

__attribute__((used)) static int wait_for_mci_complete(struct cx231xx *dev)
{
 u32 gpio;
 u32 gpio_direction = 0;
 u8 count = 0;
 get_itvc_reg(dev, gpio_direction, &gpio);

 while (!(gpio&0x020000)) {
  msleep(10);

  get_itvc_reg(dev, gpio_direction, &gpio);

  if (count++ > 100) {
   dprintk(3, "ERROR: Timeout - gpio=%x\n", gpio);
   return -EIO;
  }
 }
 return 0;
}
