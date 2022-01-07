
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_wldev {int wl; } ;
typedef enum ht_rssi_type { ____Placeholder_ht_rssi_type } ht_rssi_type ;
 int b43_phy_set (struct b43_wldev*,int const,int) ;
 int b43_radio_set (struct b43_wldev*,int const,int) ;
 int b43_radio_write (struct b43_wldev*,int const,int) ;
 int b43err (int ,char*,...) ;

__attribute__((used)) static void b43_phy_ht_rssi_select(struct b43_wldev *dev, u8 core_sel,
       enum ht_rssi_type rssi_type)
{
 static const u16 ctl_regs[3][2] = {
  { 137, 136, },
  { 135, 134, },
  { 133, 132, },
 };
 static const u16 radio_r[] = { 130, 129, 128, };
 int core;

 if (core_sel == 0) {
  b43err(dev->wl, "RSSI selection for core off not implemented yet\n");
 } else {
  for (core = 0; core < 3; core++) {

   if ((core_sel == 1 && core != 0) ||
       (core_sel == 2 && core != 1) ||
       (core_sel == 3 && core != 2))
    continue;

   switch (rssi_type) {
   case 131:
    b43_phy_set(dev, ctl_regs[core][0], 0x3 << 8);
    b43_phy_set(dev, ctl_regs[core][0], 0x3 << 10);
    b43_phy_set(dev, ctl_regs[core][1], 0x1 << 9);
    b43_phy_set(dev, ctl_regs[core][1], 0x1 << 10);

    b43_radio_set(dev, 128 | 0xbf, 0x1);
    b43_radio_write(dev, radio_r[core] | 0x159,
      0x11);
    break;
   default:
    b43err(dev->wl, "RSSI selection for type %d not implemented yet\n",
           rssi_type);
   }
  }
 }
}
