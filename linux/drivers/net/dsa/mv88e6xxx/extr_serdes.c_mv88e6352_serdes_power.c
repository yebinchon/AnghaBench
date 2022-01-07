
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int mv88e6352_serdes_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6352_serdes_write (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6352_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
      bool up)
{
 u16 val, new_val;
 int err;

 err = mv88e6352_serdes_read(chip, MII_BMCR, &val);
 if (err)
  return err;

 if (up)
  new_val = val & ~BMCR_PDOWN;
 else
  new_val = val | BMCR_PDOWN;

 if (val != new_val)
  err = mv88e6352_serdes_write(chip, MII_BMCR, new_val);

 return err;
}
