
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;







 int EINVAL ;
 int MV88E6XXX_PORT_CTL0 ;
 int MV88E6XXX_PORT_CTL0_STATE_BLOCKING ;
 int MV88E6XXX_PORT_CTL0_STATE_DISABLED ;
 int MV88E6XXX_PORT_CTL0_STATE_FORWARDING ;
 int MV88E6XXX_PORT_CTL0_STATE_LEARNING ;
 int MV88E6XXX_PORT_CTL0_STATE_MASK ;
 int dev_dbg (int ,char*,int,int ) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;
 int * mv88e6xxx_port_state_names ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

int mv88e6xxx_port_set_state(struct mv88e6xxx_chip *chip, int port, u8 state)
{
 u16 reg;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg);
 if (err)
  return err;

 reg &= ~MV88E6XXX_PORT_CTL0_STATE_MASK;

 switch (state) {
 case 131:
  state = MV88E6XXX_PORT_CTL0_STATE_DISABLED;
  break;
 case 132:
 case 128:
  state = MV88E6XXX_PORT_CTL0_STATE_BLOCKING;
  break;
 case 129:
  state = MV88E6XXX_PORT_CTL0_STATE_LEARNING;
  break;
 case 130:
  state = MV88E6XXX_PORT_CTL0_STATE_FORWARDING;
  break;
 default:
  return -EINVAL;
 }

 reg |= state;

 err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL0, reg);
 if (err)
  return err;

 dev_dbg(chip->dev, "p%d: PortState set to %s\n", port,
  mv88e6xxx_port_state_names[state]);

 return 0;
}
