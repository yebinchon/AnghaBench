
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_MMIO_RADIO_CONTROL ;
 int B43_MMIO_RADIO_DATA_LOW ;
 int B43_WARN_ON (int) ;
 int b43_write16 (struct b43_wldev*,int ,int) ;
 int b43_write16f (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_lpphy_op_radio_write(struct b43_wldev *dev, u16 reg, u16 value)
{

 B43_WARN_ON(reg == 1);

 b43_write16f(dev, B43_MMIO_RADIO_CONTROL, reg);
 b43_write16(dev, B43_MMIO_RADIO_DATA_LOW, value);
}
