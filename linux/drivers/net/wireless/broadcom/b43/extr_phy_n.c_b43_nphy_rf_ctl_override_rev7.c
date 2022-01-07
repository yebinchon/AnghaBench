
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nphy_rf_control_override_rev7 {int val_addr_core0; int val_addr_core1; int val_mask; int val_shift; } ;
struct b43_phy {int rev; } ;
struct b43_wldev {int wl; struct b43_phy phy; } ;


 int ARRAY_SIZE (int**) ;
 int B43_WARN_ON (int) ;
 struct nphy_rf_control_override_rev7* b43_nphy_get_rf_ctl_over_rev7 (struct b43_wldev*,int,int) ;
 int b43_phy_mask (struct b43_wldev*,int,int) ;
 int b43_phy_maskset (struct b43_wldev*,int,int,int) ;
 int b43_phy_set (struct b43_wldev*,int,int) ;
 int b43err (int ,char*,int) ;

__attribute__((used)) static void b43_nphy_rf_ctl_override_rev7(struct b43_wldev *dev, u16 field,
       u16 value, u8 core, bool off,
       u8 override)
{
 struct b43_phy *phy = &dev->phy;
 const struct nphy_rf_control_override_rev7 *e;
 u16 en_addrs[3][2] = {
  { 0x0E7, 0x0EC }, { 0x342, 0x343 }, { 0x346, 0x347 }
 };
 u16 en_addr;
 u16 en_mask = field;
 u16 val_addr;
 u8 i;

 if (phy->rev >= 19 || phy->rev < 3) {
  B43_WARN_ON(1);
  return;
 }


 e = b43_nphy_get_rf_ctl_over_rev7(dev, field, override);

 for (i = 0; i < 2; i++) {
  if (override >= ARRAY_SIZE(en_addrs)) {
   b43err(dev->wl, "Invalid override value %d\n", override);
   return;
  }
  en_addr = en_addrs[override][i];

  if (e)
   val_addr = (i == 0) ? e->val_addr_core0 : e->val_addr_core1;

  if (off) {
   b43_phy_mask(dev, en_addr, ~en_mask);
   if (e)
    b43_phy_mask(dev, val_addr, ~e->val_mask);
  } else {
   if (!core || (core & (1 << i))) {
    b43_phy_set(dev, en_addr, en_mask);
    if (e)
     b43_phy_maskset(dev, val_addr, ~e->val_mask, (value << e->val_shift));
   }
  }
 }
}
