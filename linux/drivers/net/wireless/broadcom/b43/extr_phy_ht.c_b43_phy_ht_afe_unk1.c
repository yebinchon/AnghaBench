
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int member_1; int member_0; } ;
typedef TYPE_1__ u16 ;
struct b43_wldev {int dummy; } ;


 int B43_HTTAB16 (int,int) ;






 int b43_httab_write (struct b43_wldev*,int ,int ) ;
 int b43_phy_mask (struct b43_wldev*,TYPE_1__ const,int) ;
 int b43_phy_set (struct b43_wldev*,TYPE_1__ const,int) ;

__attribute__((used)) static void b43_phy_ht_afe_unk1(struct b43_wldev *dev)
{
 u8 i;

 static const u16 ctl_regs[3][2] = {
  { 132, 133 },
  { 130, 131 },
  { 128, 129},
 };

 for (i = 0; i < 3; i++) {

  b43_phy_set(dev, ctl_regs[i][1], 0x4);
  b43_phy_set(dev, ctl_regs[i][0], 0x4);
  b43_phy_mask(dev, ctl_regs[i][1], ~0x1);
  b43_phy_set(dev, ctl_regs[i][0], 0x1);
  b43_httab_write(dev, B43_HTTAB16(8, 5 + (i * 0x10)), 0);
  b43_phy_mask(dev, ctl_regs[i][0], ~0x4);
 }
}
