
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43_wldev {int dummy; } ;





 int B43_HTTAB_TYPEMASK ;
 int B43_PHY_HT_TABLE_ADDR ;
 int B43_PHY_HT_TABLE_DATAHI ;
 int B43_PHY_HT_TABLE_DATALO ;
 int B43_WARN_ON (int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

u32 b43_httab_read(struct b43_wldev *dev, u32 offset)
{
 u32 type, value;

 type = offset & B43_HTTAB_TYPEMASK;
 offset &= ~B43_HTTAB_TYPEMASK;
 B43_WARN_ON(offset > 0xFFFF);

 switch (type) {
 case 128:
  b43_phy_write(dev, B43_PHY_HT_TABLE_ADDR, offset);
  value = b43_phy_read(dev, B43_PHY_HT_TABLE_DATALO) & 0xFF;
  break;
 case 130:
  b43_phy_write(dev, B43_PHY_HT_TABLE_ADDR, offset);
  value = b43_phy_read(dev, B43_PHY_HT_TABLE_DATALO);
  break;
 case 129:
  b43_phy_write(dev, B43_PHY_HT_TABLE_ADDR, offset);
  value = b43_phy_read(dev, B43_PHY_HT_TABLE_DATAHI);
  value <<= 16;
  value |= b43_phy_read(dev, B43_PHY_HT_TABLE_DATALO);
  break;
 default:
  B43_WARN_ON(1);
  value = 0;
 }

 return value;
}
