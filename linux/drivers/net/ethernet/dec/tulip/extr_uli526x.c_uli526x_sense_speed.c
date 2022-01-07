
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct uli_phy_ops {int (* read ) (struct uli526x_board_info*,int ,int) ;} ;
struct uli526x_board_info {void* op_mode; int phy_addr; struct uli_phy_ops phy; } ;


 void* ULI526X_100MFD ;
 void* ULI526X_100MHF ;
 void* ULI526X_10MFD ;
 void* ULI526X_10MHF ;
 int ULI526X_DBUG (int ,char*,int) ;
 int stub1 (struct uli526x_board_info*,int ,int) ;
 int stub2 (struct uli526x_board_info*,int ,int) ;
 int stub3 (struct uli526x_board_info*,int ,int) ;

__attribute__((used)) static u8 uli526x_sense_speed(struct uli526x_board_info * db)
{
 struct uli_phy_ops *phy = &db->phy;
 u8 ErrFlag = 0;
 u16 phy_mode;

 phy_mode = phy->read(db, db->phy_addr, 1);
 phy_mode = phy->read(db, db->phy_addr, 1);

 if ( (phy_mode & 0x24) == 0x24 ) {

  phy_mode = ((phy->read(db, db->phy_addr, 5) & 0x01e0)<<7);
  if(phy_mode&0x8000)
   phy_mode = 0x8000;
  else if(phy_mode&0x4000)
   phy_mode = 0x4000;
  else if(phy_mode&0x2000)
   phy_mode = 0x2000;
  else
   phy_mode = 0x1000;

  switch (phy_mode) {
  case 0x1000: db->op_mode = ULI526X_10MHF; break;
  case 0x2000: db->op_mode = ULI526X_10MFD; break;
  case 0x4000: db->op_mode = ULI526X_100MHF; break;
  case 0x8000: db->op_mode = ULI526X_100MFD; break;
  default: db->op_mode = ULI526X_10MHF; ErrFlag = 1; break;
  }
 } else {
  db->op_mode = ULI526X_10MHF;
  ULI526X_DBUG(0, "Link Failed :", phy_mode);
  ErrFlag = 1;
 }

 return ErrFlag;
}
