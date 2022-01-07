
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct dmfe_board_info {int HPNA_command; int chip_id; int phy_addr; int ioaddr; } ;


 int DM9801_NOISE_FLOOR ;
 int HPNA_NoiseFloor ;
 int dmfe_phy_read (int ,int ,int,int ) ;
 int dmfe_phy_write (int ,int ,int,int,int ) ;

__attribute__((used)) static void dmfe_program_DM9801(struct dmfe_board_info * db, int HPNA_rev)
{
 uint reg17, reg25;

 if ( !HPNA_NoiseFloor ) HPNA_NoiseFloor = DM9801_NOISE_FLOOR;
 switch(HPNA_rev) {
 case 0xb900:
  db->HPNA_command |= 0x1000;
  reg25 = dmfe_phy_read(db->ioaddr, db->phy_addr, 24, db->chip_id);
  reg25 = ( (reg25 + HPNA_NoiseFloor) & 0xff) | 0xf000;
  reg17 = dmfe_phy_read(db->ioaddr, db->phy_addr, 17, db->chip_id);
  break;
 case 0xb901:
  reg25 = dmfe_phy_read(db->ioaddr, db->phy_addr, 25, db->chip_id);
  reg25 = (reg25 & 0xff00) + HPNA_NoiseFloor;
  reg17 = dmfe_phy_read(db->ioaddr, db->phy_addr, 17, db->chip_id);
  reg17 = (reg17 & 0xfff0) + HPNA_NoiseFloor + 3;
  break;
 case 0xb902:
 case 0xb903:
 default:
  db->HPNA_command |= 0x1000;
  reg25 = dmfe_phy_read(db->ioaddr, db->phy_addr, 25, db->chip_id);
  reg25 = (reg25 & 0xff00) + HPNA_NoiseFloor - 5;
  reg17 = dmfe_phy_read(db->ioaddr, db->phy_addr, 17, db->chip_id);
  reg17 = (reg17 & 0xfff0) + HPNA_NoiseFloor;
  break;
 }
 dmfe_phy_write(db->ioaddr, db->phy_addr, 16, db->HPNA_command, db->chip_id);
 dmfe_phy_write(db->ioaddr, db->phy_addr, 17, reg17, db->chip_id);
 dmfe_phy_write(db->ioaddr, db->phy_addr, 25, reg25, db->chip_id);
}
