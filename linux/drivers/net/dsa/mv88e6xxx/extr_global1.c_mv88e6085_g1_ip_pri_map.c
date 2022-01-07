
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_IP_PRI_0 ;
 int MV88E6XXX_G1_IP_PRI_1 ;
 int MV88E6XXX_G1_IP_PRI_2 ;
 int MV88E6XXX_G1_IP_PRI_3 ;
 int MV88E6XXX_G1_IP_PRI_4 ;
 int MV88E6XXX_G1_IP_PRI_5 ;
 int MV88E6XXX_G1_IP_PRI_6 ;
 int MV88E6XXX_G1_IP_PRI_7 ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6085_g1_ip_pri_map(struct mv88e6xxx_chip *chip)
{
 int err;


 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_IP_PRI_0, 0x0000);
 if (err)
  return err;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_IP_PRI_1, 0x0000);
 if (err)
  return err;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_IP_PRI_2, 0x5555);
 if (err)
  return err;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_IP_PRI_3, 0x5555);
 if (err)
  return err;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_IP_PRI_4, 0xaaaa);
 if (err)
  return err;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_IP_PRI_5, 0xaaaa);
 if (err)
  return err;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_IP_PRI_6, 0xffff);
 if (err)
  return err;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_IP_PRI_7, 0xffff);
 if (err)
  return err;

 return 0;
}
