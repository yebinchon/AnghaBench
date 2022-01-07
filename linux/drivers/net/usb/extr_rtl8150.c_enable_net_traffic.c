
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int flags; TYPE_1__* udev; } ;
typedef TYPE_2__ rtl8150_t ;
struct TYPE_7__ {int dev; } ;


 int CR ;
 int MSR ;
 int RCR ;
 int RTL8150_HW_CRC ;
 int TCR ;
 int dev_warn (int *,char*) ;
 int get_registers (TYPE_2__*,int ,int,int*) ;
 int rtl8150_reset (TYPE_2__*) ;
 int set_bit (int ,int *) ;
 int set_registers (TYPE_2__*,int ,int,int*) ;

__attribute__((used)) static int enable_net_traffic(rtl8150_t * dev)
{
 u8 cr, tcr, rcr, msr;

 if (!rtl8150_reset(dev)) {
  dev_warn(&dev->udev->dev, "device reset failed\n");
 }

 rcr = 0x9e;
 tcr = 0xd8;
 cr = 0x0c;
 if (!(rcr & 0x80))
  set_bit(RTL8150_HW_CRC, &dev->flags);
 set_registers(dev, RCR, 1, &rcr);
 set_registers(dev, TCR, 1, &tcr);
 set_registers(dev, CR, 1, &cr);
 get_registers(dev, MSR, 1, &msr);

 return 0;
}
