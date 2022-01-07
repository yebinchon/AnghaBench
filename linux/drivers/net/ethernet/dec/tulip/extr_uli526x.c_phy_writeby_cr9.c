
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uli526x_board_info {int dummy; } ;


 int PHY_DATA_0 ;
 int PHY_DATA_1 ;
 int phy_write_1bit (struct uli526x_board_info*,int ) ;

__attribute__((used)) static void phy_writeby_cr9(struct uli526x_board_info *db, u8 phy_addr,
       u8 offset, u16 phy_data)
{
 u16 i;


 for (i = 0; i < 35; i++)
  phy_write_1bit(db, PHY_DATA_1);


 phy_write_1bit(db, PHY_DATA_0);
 phy_write_1bit(db, PHY_DATA_1);


 phy_write_1bit(db, PHY_DATA_0);
 phy_write_1bit(db, PHY_DATA_1);


 for (i = 0x10; i > 0; i = i >> 1)
  phy_write_1bit(db, phy_addr & i ? PHY_DATA_1 : PHY_DATA_0);


 for (i = 0x10; i > 0; i = i >> 1)
  phy_write_1bit(db, offset & i ? PHY_DATA_1 : PHY_DATA_0);


 phy_write_1bit(db, PHY_DATA_1);
 phy_write_1bit(db, PHY_DATA_0);


 for (i = 0x8000; i > 0; i >>= 1)
  phy_write_1bit(db, phy_data & i ? PHY_DATA_1 : PHY_DATA_0);
}
