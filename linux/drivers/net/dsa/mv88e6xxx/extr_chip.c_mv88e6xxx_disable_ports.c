
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int BR_STATE_DISABLED ;
 int mv88e6xxx_num_ports (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_port_set_state (struct mv88e6xxx_chip*,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mv88e6xxx_disable_ports(struct mv88e6xxx_chip *chip)
{
 int i, err;


 for (i = 0; i < mv88e6xxx_num_ports(chip); i++) {
  err = mv88e6xxx_port_set_state(chip, i, BR_STATE_DISABLED);
  if (err)
   return err;
 }




 usleep_range(2000, 4000);

 return 0;
}
