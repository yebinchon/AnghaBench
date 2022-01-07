
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uli_phy_ops {int (* read ) (struct uli526x_board_info*,int ,int) ;int (* write ) (struct uli526x_board_info*,int ,int ,int) ;} ;
struct uli526x_board_info {int op_mode; int media_mode; int phy_addr; int ioaddr; int cr6_data; struct uli_phy_ops phy; } ;


 int CR6_FDM ;




 int stub1 (struct uli526x_board_info*,int ,int) ;
 int stub2 (struct uli526x_board_info*,int ,int ,int) ;
 int update_cr6 (int ,int ) ;

__attribute__((used)) static void uli526x_process_mode(struct uli526x_board_info *db)
{
 struct uli_phy_ops *phy = &db->phy;
 u16 phy_reg;


 if (db->op_mode & 0x4)
  db->cr6_data |= CR6_FDM;
 else
  db->cr6_data &= ~CR6_FDM;

 update_cr6(db->cr6_data, db->ioaddr);


 if (!(db->media_mode & 0x8)) {

  phy_reg = phy->read(db, db->phy_addr, 6);
  if (!(phy_reg & 0x1)) {

   phy_reg = 0x0;
   switch(db->op_mode) {
   case 128: phy_reg = 0x0; break;
   case 129: phy_reg = 0x100; break;
   case 130: phy_reg = 0x2000; break;
   case 131: phy_reg = 0x2100; break;
   }
   phy->write(db, db->phy_addr, 0, phy_reg);
  }
 }
}
