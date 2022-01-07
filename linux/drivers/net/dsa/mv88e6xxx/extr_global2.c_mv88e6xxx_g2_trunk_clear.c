
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 scalar_t__ BIT (int ) ;
 int mv88e6xxx_g2_trunk_mapping_write (struct mv88e6xxx_chip*,int,int ) ;
 int mv88e6xxx_g2_trunk_mask_write (struct mv88e6xxx_chip*,int,int,scalar_t__ const) ;
 int mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;

int mv88e6xxx_g2_trunk_clear(struct mv88e6xxx_chip *chip)
{
 const u16 port_mask = BIT(mv88e6xxx_num_ports(chip)) - 1;
 int i, err;


 for (i = 0; i < 8; ++i) {
  err = mv88e6xxx_g2_trunk_mask_write(chip, i, 0, port_mask);
  if (err)
   return err;
 }


 for (i = 0; i < 16; ++i) {
  err = mv88e6xxx_g2_trunk_mapping_write(chip, i, 0);
  if (err)
   return err;
 }

 return 0;
}
