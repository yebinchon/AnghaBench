
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct mv88e6xxx_chip {int dev; } ;


 int MV88E6XXX_PORT_CTL2 ;
 size_t MV88E6XXX_PORT_CTL2_8021Q_MODE_MASK ;
 int dev_dbg (int ,char*,int,int ) ;
 int * mv88e6xxx_port_8021q_mode_names ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,size_t*) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,size_t) ;

int mv88e6xxx_port_set_8021q_mode(struct mv88e6xxx_chip *chip, int port,
      u16 mode)
{
 u16 reg;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL2, &reg);
 if (err)
  return err;

 reg &= ~MV88E6XXX_PORT_CTL2_8021Q_MODE_MASK;
 reg |= mode & MV88E6XXX_PORT_CTL2_8021Q_MODE_MASK;

 err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL2, reg);
 if (err)
  return err;

 dev_dbg(chip->dev, "p%d: 802.1QMode set to %s\n", port,
  mv88e6xxx_port_8021q_mode_names[mode]);

 return 0;
}
