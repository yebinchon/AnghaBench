
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dmfe_board_info {int op_mode; int cr6_data; int media_mode; int chip_id; int phy_addr; int ioaddr; scalar_t__ chip_type; } ;


 int CR6_FDM ;




 int PCI_DM9102_ID ;
 int dmfe_phy_read (int ,int ,int,int ) ;
 int dmfe_phy_write (int ,int ,int ,int,int ) ;
 int mdelay (int) ;
 int update_cr6 (int,int ) ;

__attribute__((used)) static void dmfe_process_mode(struct dmfe_board_info *db)
{
 u16 phy_reg;


 if (db->op_mode & 0x4)
  db->cr6_data |= CR6_FDM;
 else
  db->cr6_data &= ~CR6_FDM;


 if (db->op_mode & 0x10)
  db->cr6_data |= 0x40000;
 else
  db->cr6_data &= ~0x40000;

 update_cr6(db->cr6_data, db->ioaddr);


 if ( !(db->media_mode & 0x18)) {

  phy_reg = dmfe_phy_read(db->ioaddr, db->phy_addr, 6, db->chip_id);
  if ( !(phy_reg & 0x1) ) {

   phy_reg = 0x0;
   switch(db->op_mode) {
   case 128: phy_reg = 0x0; break;
   case 129: phy_reg = 0x100; break;
   case 130: phy_reg = 0x2000; break;
   case 131: phy_reg = 0x2100; break;
   }
   dmfe_phy_write(db->ioaddr,
           db->phy_addr, 0, phy_reg, db->chip_id);
          if ( db->chip_type && (db->chip_id == PCI_DM9102_ID) )
    mdelay(20);
   dmfe_phy_write(db->ioaddr,
           db->phy_addr, 0, phy_reg, db->chip_id);
  }
 }
}
