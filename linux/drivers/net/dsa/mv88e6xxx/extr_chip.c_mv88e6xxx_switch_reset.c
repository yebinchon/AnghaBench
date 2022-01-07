
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_disable_ports (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_hardware_reset (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_software_reset (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_switch_reset(struct mv88e6xxx_chip *chip)
{
 int err;

 err = mv88e6xxx_disable_ports(chip);
 if (err)
  return err;

 mv88e6xxx_hardware_reset(chip);

 return mv88e6xxx_software_reset(chip);
}
