
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;
typedef int s8 ;
typedef scalar_t__ s32 ;
typedef enum ht_rssi_type { ____Placeholder_ht_rssi_type } ht_rssi_type ;
 int const B43_PHY_HT_RSSI_C1 ;
 int const B43_PHY_HT_RSSI_C2 ;
 int const B43_PHY_HT_RSSI_C3 ;
 int b43_phy_ht_rssi_select (struct b43_wldev*,int,int) ;
 int b43_phy_read (struct b43_wldev*,int const) ;
 int b43_phy_write (struct b43_wldev*,int const,int) ;

__attribute__((used)) static void b43_phy_ht_poll_rssi(struct b43_wldev *dev, enum ht_rssi_type type,
     s32 *buf, u8 nsamp)
{
 u16 phy_regs_values[12];
 static const u16 phy_regs_to_save[] = {
  133, 132,
  0x848, 0x841,
  131, 130,
  0x868, 0x861,
  129, 128,
  0x888, 0x881,
 };
 u16 tmp[3];
 int i;

 for (i = 0; i < 12; i++)
  phy_regs_values[i] = b43_phy_read(dev, phy_regs_to_save[i]);

 b43_phy_ht_rssi_select(dev, 5, type);

 for (i = 0; i < 6; i++)
  buf[i] = 0;

 for (i = 0; i < nsamp; i++) {
  tmp[0] = b43_phy_read(dev, B43_PHY_HT_RSSI_C1);
  tmp[1] = b43_phy_read(dev, B43_PHY_HT_RSSI_C2);
  tmp[2] = b43_phy_read(dev, B43_PHY_HT_RSSI_C3);

  buf[0] += ((s8)((tmp[0] & 0x3F) << 2)) >> 2;
  buf[1] += ((s8)(((tmp[0] >> 8) & 0x3F) << 2)) >> 2;
  buf[2] += ((s8)((tmp[1] & 0x3F) << 2)) >> 2;
  buf[3] += ((s8)(((tmp[1] >> 8) & 0x3F) << 2)) >> 2;
  buf[4] += ((s8)((tmp[2] & 0x3F) << 2)) >> 2;
  buf[5] += ((s8)(((tmp[2] >> 8) & 0x3F) << 2)) >> 2;
 }

 for (i = 0; i < 12; i++)
  b43_phy_write(dev, phy_regs_to_save[i], phy_regs_values[i]);
}
