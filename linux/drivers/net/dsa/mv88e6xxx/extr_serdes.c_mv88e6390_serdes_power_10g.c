
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MDIO_MMD_PHYXS ;
 int MV88E6390_PCS_CONTROL_1 ;
 int MV88E6390_PCS_CONTROL_1_LOOPBACK ;
 int MV88E6390_PCS_CONTROL_1_PDOWN ;
 int MV88E6390_PCS_CONTROL_1_RESET ;
 int mv88e6390_serdes_read (struct mv88e6xxx_chip*,int ,int ,int ,int*) ;
 int mv88e6390_serdes_write (struct mv88e6xxx_chip*,int ,int ,int ,int) ;

__attribute__((used)) static int mv88e6390_serdes_power_10g(struct mv88e6xxx_chip *chip, u8 lane,
          bool up)
{
 u16 val, new_val;
 int err;

 err = mv88e6390_serdes_read(chip, lane, MDIO_MMD_PHYXS,
        MV88E6390_PCS_CONTROL_1, &val);

 if (err)
  return err;

 if (up)
  new_val = val & ~(MV88E6390_PCS_CONTROL_1_RESET |
      MV88E6390_PCS_CONTROL_1_LOOPBACK |
      MV88E6390_PCS_CONTROL_1_PDOWN);
 else
  new_val = val | MV88E6390_PCS_CONTROL_1_PDOWN;

 if (val != new_val)
  err = mv88e6390_serdes_write(chip, lane, MDIO_MMD_PHYXS,
          MV88E6390_PCS_CONTROL_1, new_val);

 return err;
}
