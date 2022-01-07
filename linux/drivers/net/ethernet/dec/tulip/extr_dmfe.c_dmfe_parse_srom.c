
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmfe_board_info {char* srom; int cr15_data; int NIC_capability; int PHY_reg4; int HPNA_command; int HPNA_present; int cr6_data; int HPNA_timer; int chip_id; int phy_addr; int ioaddr; } ;
typedef int __le32 ;
typedef int __le16 ;


 int CR15_DEFAULT ;
 int DMFE_100MFD ;
 int DMFE_100MHF ;
 int DMFE_10MFD ;
 int DMFE_1M_HPNA ;
 int DMFE_DBUG (int ,char*,int ) ;
 int HPNA_mode ;
 scalar_t__ HPNA_rx_cmd ;
 int HPNA_tx_cmd ;
 int SF_mode ;
 int SROM_V41_CODE ;
 int dmfe_media_mode ;
 int dmfe_phy_read (int ,int ,int,int ) ;
 int dmfe_program_DM9801 (struct dmfe_board_info*,int) ;
 int dmfe_program_DM9802 (struct dmfe_board_info*) ;
 int le16_to_cpup (int *) ;
 int le32_to_cpup (int *) ;
 int update_cr6 (int,int ) ;

__attribute__((used)) static void dmfe_parse_srom(struct dmfe_board_info * db)
{
 char * srom = db->srom;
 int dmfe_mode, tmp_reg;

 DMFE_DBUG(0, "dmfe_parse_srom() ", 0);


 db->cr15_data = CR15_DEFAULT;


 if ( ( (int) srom[18] & 0xff) == SROM_V41_CODE) {


  db->NIC_capability = le16_to_cpup((__le16 *) (srom + 34));
  db->PHY_reg4 = 0;
  for (tmp_reg = 1; tmp_reg < 0x10; tmp_reg <<= 1) {
   switch( db->NIC_capability & tmp_reg ) {
   case 0x1: db->PHY_reg4 |= 0x0020; break;
   case 0x2: db->PHY_reg4 |= 0x0040; break;
   case 0x4: db->PHY_reg4 |= 0x0080; break;
   case 0x8: db->PHY_reg4 |= 0x0100; break;
   }
  }


  dmfe_mode = (le32_to_cpup((__le32 *) (srom + 34)) &
        le32_to_cpup((__le32 *) (srom + 36)));
  switch(dmfe_mode) {
  case 0x4: dmfe_media_mode = DMFE_100MHF; break;
  case 0x2: dmfe_media_mode = DMFE_10MFD; break;
  case 0x8: dmfe_media_mode = DMFE_100MFD; break;
  case 0x100:
  case 0x200: dmfe_media_mode = DMFE_1M_HPNA; break;
  }



  if ( (SF_mode & 0x1) || (srom[43] & 0x80) )
   db->cr15_data |= 0x40;


  if ( (SF_mode & 0x2) || (srom[40] & 0x1) )
   db->cr15_data |= 0x400;


  if ( (SF_mode & 0x4) || (srom[40] & 0xe) )
   db->cr15_data |= 0x9800;
 }


 db->HPNA_command = 1;


 if (HPNA_rx_cmd == 0)
  db->HPNA_command |= 0x8000;


 if (HPNA_tx_cmd == 1)
  switch(HPNA_mode) {
  case 0: db->HPNA_command |= 0x0904; break;
  case 1: db->HPNA_command |= 0x0a00; break;
  case 2: db->HPNA_command |= 0x0506; break;
  case 3: db->HPNA_command |= 0x0602; break;
  }
 else
  switch(HPNA_mode) {
  case 0: db->HPNA_command |= 0x0004; break;
  case 1: db->HPNA_command |= 0x0000; break;
  case 2: db->HPNA_command |= 0x0006; break;
  case 3: db->HPNA_command |= 0x0002; break;
  }


 db->HPNA_present = 0;
 update_cr6(db->cr6_data | 0x40000, db->ioaddr);
 tmp_reg = dmfe_phy_read(db->ioaddr, db->phy_addr, 3, db->chip_id);
 if ( ( tmp_reg & 0xfff0 ) == 0xb900 ) {

  db->HPNA_timer = 8;
  if ( dmfe_phy_read(db->ioaddr, db->phy_addr, 31, db->chip_id) == 0x4404) {

   db->HPNA_present = 1;
   dmfe_program_DM9801(db, tmp_reg);
  } else {

   db->HPNA_present = 2;
   dmfe_program_DM9802(db);
  }
 }

}
