
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct dmfe_board_info {int HPNA_command; int chip_id; int phy_addr; int ioaddr; } ;


 int DM9802_NOISE_FLOOR ;
 int HPNA_NoiseFloor ;
 int dmfe_phy_read (int ,int ,int,int ) ;
 int dmfe_phy_write (int ,int ,int,int,int ) ;

__attribute__((used)) static void dmfe_program_DM9802(struct dmfe_board_info * db)
{
 uint phy_reg;

 if ( !HPNA_NoiseFloor ) HPNA_NoiseFloor = DM9802_NOISE_FLOOR;
 dmfe_phy_write(db->ioaddr, db->phy_addr, 16, db->HPNA_command, db->chip_id);
 phy_reg = dmfe_phy_read(db->ioaddr, db->phy_addr, 25, db->chip_id);
 phy_reg = ( phy_reg & 0xff00) + HPNA_NoiseFloor;
 dmfe_phy_write(db->ioaddr, db->phy_addr, 25, phy_reg, db->chip_id);
}
