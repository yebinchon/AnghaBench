
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;





 int B43_HTTAB_TYPEMASK ;
 int B43_PHY_HT_TABLE_ADDR ;
 int B43_PHY_HT_TABLE_DATAHI ;
 int B43_PHY_HT_TABLE_DATALO ;
 int B43_WARN_ON (int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

void b43_httab_read_bulk(struct b43_wldev *dev, u32 offset,
    unsigned int nr_elements, void *_data)
{
 u32 type;
 u8 *data = _data;
 unsigned int i;

 type = offset & B43_HTTAB_TYPEMASK;
 offset &= ~B43_HTTAB_TYPEMASK;
 B43_WARN_ON(offset > 0xFFFF);

 b43_phy_write(dev, B43_PHY_HT_TABLE_ADDR, offset);

 for (i = 0; i < nr_elements; i++) {
  switch (type) {
  case 128:
   *data = b43_phy_read(dev, B43_PHY_HT_TABLE_DATALO) & 0xFF;
   data++;
   break;
  case 130:
   *((u16 *)data) = b43_phy_read(dev, B43_PHY_HT_TABLE_DATALO);
   data += 2;
   break;
  case 129:
   *((u32 *)data) = b43_phy_read(dev, B43_PHY_HT_TABLE_DATAHI);
   *((u32 *)data) <<= 16;
   *((u32 *)data) |= b43_phy_read(dev, B43_PHY_HT_TABLE_DATALO);
   data += 4;
   break;
  default:
   B43_WARN_ON(1);
  }
 }
}
