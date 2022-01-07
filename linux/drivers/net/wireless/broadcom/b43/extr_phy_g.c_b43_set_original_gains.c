
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;


 int B43_OFDMTAB_GAINX ;
 int B43_OFDMTAB_GAINX_R1 ;
 int b43_dummy_transmission (struct b43_wldev*,int,int) ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int,int,int) ;
 int b43_phy_maskset (struct b43_wldev*,int,int,int) ;

__attribute__((used)) static void b43_set_original_gains(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 u16 i, tmp;
 u16 table;
 u16 start = 0x0008, end = 0x0018;

 if (phy->rev <= 1) {
  start = 0x0010;
  end = 0x0020;
 }

 table = B43_OFDMTAB_GAINX;
 if (phy->rev <= 1)
  table = B43_OFDMTAB_GAINX_R1;
 for (i = 0; i < 4; i++) {
  tmp = (i & 0xFFFC);
  tmp |= (i & 0x0001) << 1;
  tmp |= (i & 0x0002) >> 1;

  b43_ofdmtab_write16(dev, table, i, tmp);
 }

 for (i = start; i < end; i++)
  b43_ofdmtab_write16(dev, table, i, i - start);

 b43_phy_maskset(dev, 0x04A0, 0xBFBF, 0x4040);
 b43_phy_maskset(dev, 0x04A1, 0xBFBF, 0x4040);
 b43_phy_maskset(dev, 0x04A2, 0xBFBF, 0x4000);
 b43_dummy_transmission(dev, 0, 1);
}
