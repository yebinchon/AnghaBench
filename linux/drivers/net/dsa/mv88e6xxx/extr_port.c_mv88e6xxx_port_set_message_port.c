
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PORT_CTL1 ;
 int MV88E6XXX_PORT_CTL1_MESSAGE_PORT ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int *) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int ) ;

int mv88e6xxx_port_set_message_port(struct mv88e6xxx_chip *chip, int port,
        bool message_port)
{
 u16 val;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL1, &val);
 if (err)
  return err;

 if (message_port)
  val |= MV88E6XXX_PORT_CTL1_MESSAGE_PORT;
 else
  val &= ~MV88E6XXX_PORT_CTL1_MESSAGE_PORT;

 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL1, val);
}
