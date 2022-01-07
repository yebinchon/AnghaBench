
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct b43_phy_g* g; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_g {scalar_t__* tssi2dbm; } ;


 int b43_ofdmtab_write16 (struct b43_wldev*,int,int,scalar_t__) ;
 int b43_phy_write (struct b43_wldev*,int,int) ;

__attribute__((used)) static void b43_gphy_tssi_power_lt_init(struct b43_wldev *dev)
{
 struct b43_phy_g *gphy = dev->phy.g;
 int i;
 u16 value;

 for (i = 0; i < 32; i++)
  b43_ofdmtab_write16(dev, 0x3C20, i, gphy->tssi2dbm[i]);
 for (i = 32; i < 64; i++)
  b43_ofdmtab_write16(dev, 0x3C00, i - 32, gphy->tssi2dbm[i]);
 for (i = 0; i < 64; i += 2) {
  value = (u16) gphy->tssi2dbm[i];
  value |= ((u16) gphy->tssi2dbm[i + 1]) << 8;
  b43_phy_write(dev, 0x380 + (i / 2), value);
 }
}
