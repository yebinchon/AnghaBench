
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_g2_switch_mac_write (struct mv88e6xxx_chip*,int,int ) ;

int mv88e6xxx_g2_set_switch_mac(struct mv88e6xxx_chip *chip, u8 *addr)
{
 int i, err;

 for (i = 0; i < 6; i++) {
  err = mv88e6xxx_g2_switch_mac_write(chip, i, addr[i]);
  if (err)
   break;
 }

 return err;
}
