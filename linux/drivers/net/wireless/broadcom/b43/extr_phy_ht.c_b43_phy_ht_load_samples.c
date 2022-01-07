
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_PHY_HT_TABLE_ADDR ;
 int B43_PHY_HT_TABLE_DATAHI ;
 int B43_PHY_HT_TABLE_DATALO ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static u16 b43_phy_ht_load_samples(struct b43_wldev *dev)
{
 int i;
 u16 len = 20 << 3;

 b43_phy_write(dev, B43_PHY_HT_TABLE_ADDR, 0x4400);

 for (i = 0; i < len; i++) {
  b43_phy_write(dev, B43_PHY_HT_TABLE_DATAHI, 0);
  b43_phy_write(dev, B43_PHY_HT_TABLE_DATALO, 0);
 }

 return len;
}
