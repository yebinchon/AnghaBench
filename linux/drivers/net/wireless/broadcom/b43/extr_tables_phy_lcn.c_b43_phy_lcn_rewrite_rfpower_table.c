
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43_wldev {int dummy; } ;


 int B43_LCNTAB32 (int,int) ;
 int b43_lcntab_read (struct b43_wldev*,int ) ;
 int b43_lcntab_write (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_phy_lcn_rewrite_rfpower_table(struct b43_wldev *dev)
{
 int i;
 u32 tmp;
 for (i = 0; i < 128; i++) {
  tmp = b43_lcntab_read(dev, B43_LCNTAB32(0x7, 0x240 + i));
  b43_lcntab_write(dev, B43_LCNTAB32(0x7, 0x240 + i), tmp);
 }
}
