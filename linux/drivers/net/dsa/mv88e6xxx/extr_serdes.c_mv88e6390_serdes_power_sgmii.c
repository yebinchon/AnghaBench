
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MDIO_MMD_PHYXS ;
 int MV88E6390_SGMII_CONTROL ;
 int MV88E6390_SGMII_CONTROL_LOOPBACK ;
 int MV88E6390_SGMII_CONTROL_PDOWN ;
 int MV88E6390_SGMII_CONTROL_RESET ;
 int mv88e6390_serdes_read (struct mv88e6xxx_chip*,int ,int ,int ,int*) ;
 int mv88e6390_serdes_write (struct mv88e6xxx_chip*,int ,int ,int ,int) ;

__attribute__((used)) static int mv88e6390_serdes_power_sgmii(struct mv88e6xxx_chip *chip, u8 lane,
     bool up)
{
 u16 val, new_val;
 int err;

 err = mv88e6390_serdes_read(chip, lane, MDIO_MMD_PHYXS,
        MV88E6390_SGMII_CONTROL, &val);
 if (err)
  return err;

 if (up)
  new_val = val & ~(MV88E6390_SGMII_CONTROL_RESET |
      MV88E6390_SGMII_CONTROL_LOOPBACK |
      MV88E6390_SGMII_CONTROL_PDOWN);
 else
  new_val = val | MV88E6390_SGMII_CONTROL_PDOWN;

 if (val != new_val)
  err = mv88e6390_serdes_write(chip, lane, MDIO_MMD_PHYXS,
          MV88E6390_SGMII_CONTROL, new_val);

 return err;
}
