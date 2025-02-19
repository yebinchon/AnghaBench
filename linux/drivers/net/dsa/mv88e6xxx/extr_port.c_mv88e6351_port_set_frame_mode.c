
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
typedef enum mv88e6xxx_frame_mode { ____Placeholder_mv88e6xxx_frame_mode } mv88e6xxx_frame_mode ;


 int EINVAL ;




 int MV88E6XXX_PORT_CTL0 ;
 int MV88E6XXX_PORT_CTL0_FRAME_MODE_DSA ;
 int MV88E6XXX_PORT_CTL0_FRAME_MODE_ETHER_TYPE_DSA ;
 int MV88E6XXX_PORT_CTL0_FRAME_MODE_MASK ;
 int MV88E6XXX_PORT_CTL0_FRAME_MODE_NORMAL ;
 int MV88E6XXX_PORT_CTL0_FRAME_MODE_PROVIDER ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int *) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int ) ;

int mv88e6351_port_set_frame_mode(struct mv88e6xxx_chip *chip, int port,
      enum mv88e6xxx_frame_mode mode)
{
 int err;
 u16 reg;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg);
 if (err)
  return err;

 reg &= ~MV88E6XXX_PORT_CTL0_FRAME_MODE_MASK;

 switch (mode) {
 case 129:
  reg |= MV88E6XXX_PORT_CTL0_FRAME_MODE_NORMAL;
  break;
 case 131:
  reg |= MV88E6XXX_PORT_CTL0_FRAME_MODE_DSA;
  break;
 case 128:
  reg |= MV88E6XXX_PORT_CTL0_FRAME_MODE_PROVIDER;
  break;
 case 130:
  reg |= MV88E6XXX_PORT_CTL0_FRAME_MODE_ETHER_TYPE_DSA;
  break;
 default:
  return -EINVAL;
 }

 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL0, reg);
}
