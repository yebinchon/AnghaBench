
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_LPPHY_TABLEDATAHI ;
 int B43_LPPHY_TABLEDATALO ;
 int B43_LPPHY_TABLE_ADDR ;



 int B43_LPTAB_TYPEMASK ;
 int B43_WARN_ON (int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

void b43_lptab_read_bulk(struct b43_wldev *dev, u32 offset,
    unsigned int nr_elements, void *_data)
{
 u32 type;
 u8 *data = _data;
 unsigned int i;

 type = offset & B43_LPTAB_TYPEMASK;
 offset &= ~B43_LPTAB_TYPEMASK;
 B43_WARN_ON(offset > 0xFFFF);

 b43_phy_write(dev, B43_LPPHY_TABLE_ADDR, offset);

 for (i = 0; i < nr_elements; i++) {
  switch (type) {
  case 128:
   *data = b43_phy_read(dev, B43_LPPHY_TABLEDATALO) & 0xFF;
   data++;
   break;
  case 130:
   *((u16 *)data) = b43_phy_read(dev, B43_LPPHY_TABLEDATALO);
   data += 2;
   break;
  case 129:
   *((u32 *)data) = b43_phy_read(dev, B43_LPPHY_TABLEDATAHI);
   *((u32 *)data) <<= 16;
   *((u32 *)data) |= b43_phy_read(dev, B43_LPPHY_TABLEDATALO);
   data += 4;
   break;
  default:
   B43_WARN_ON(1);
  }
 }
}
