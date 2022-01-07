
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int BR_STATE_DISABLED ;
 scalar_t__ mv88e6390_setup_errata_applied (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_port_hidden_write (struct mv88e6xxx_chip*,int,int,int ,int) ;
 int mv88e6xxx_port_set_state (struct mv88e6xxx_chip*,int,int ) ;
 int mv88e6xxx_software_reset (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6390_setup_errata(struct mv88e6xxx_chip *chip)
{
 int port;
 int err;

 if (mv88e6390_setup_errata_applied(chip))
  return 0;


 for (port = 0; port < mv88e6xxx_num_ports(chip); port++) {
  err = mv88e6xxx_port_set_state(chip, port, BR_STATE_DISABLED);
  if (err)
   return err;
 }

 for (port = 0; port < mv88e6xxx_num_ports(chip); port++) {
  err = mv88e6xxx_port_hidden_write(chip, 0xf, port, 0, 0x01c0);
  if (err)
   return err;
 }

 return mv88e6xxx_software_reset(chip);
}
