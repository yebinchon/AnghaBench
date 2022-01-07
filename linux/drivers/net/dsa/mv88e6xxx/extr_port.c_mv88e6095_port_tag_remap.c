
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6095_PORT_IEEE_PRIO_REMAP_0123 ;
 int MV88E6095_PORT_IEEE_PRIO_REMAP_4567 ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

int mv88e6095_port_tag_remap(struct mv88e6xxx_chip *chip, int port)
{
 int err;


 err = mv88e6xxx_port_write(chip, port,
       MV88E6095_PORT_IEEE_PRIO_REMAP_0123,
       0x3210);
 if (err)
  return err;

 return mv88e6xxx_port_write(chip, port,
        MV88E6095_PORT_IEEE_PRIO_REMAP_4567,
        0x7654);
}
