
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6185_port_set_default_forward (struct mv88e6xxx_chip*,int,int) ;
 int mv88e6185_port_set_forward_unknown (struct mv88e6xxx_chip*,int,int) ;

int mv88e6185_port_set_egress_floods(struct mv88e6xxx_chip *chip, int port,
         bool unicast, bool multicast)
{
 int err;

 err = mv88e6185_port_set_forward_unknown(chip, port, unicast);
 if (err)
  return err;

 return mv88e6185_port_set_default_forward(chip, port, multicast);
}
