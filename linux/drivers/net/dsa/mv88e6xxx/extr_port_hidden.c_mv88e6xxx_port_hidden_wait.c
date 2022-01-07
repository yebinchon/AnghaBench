
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PORT_RESERVED_1A ;
 int MV88E6XXX_PORT_RESERVED_1A_BUSY ;
 int MV88E6XXX_PORT_RESERVED_1A_CTRL_PORT ;
 int __bf_shf (int ) ;
 int mv88e6xxx_wait_bit (struct mv88e6xxx_chip*,int ,int ,int,int ) ;

int mv88e6xxx_port_hidden_wait(struct mv88e6xxx_chip *chip)
{
 int bit = __bf_shf(MV88E6XXX_PORT_RESERVED_1A_BUSY);

 return mv88e6xxx_wait_bit(chip, MV88E6XXX_PORT_RESERVED_1A_CTRL_PORT,
      MV88E6XXX_PORT_RESERVED_1A, bit, 0);
}
