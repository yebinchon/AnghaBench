
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;


 int EINVAL ;
 int MV88E6XXX_PORT_BASE_VLAN ;
 int MV88E6XXX_PORT_CTL1 ;
 int dev_dbg (int ,char*,int,int) ;
 int mv88e6xxx_num_databases (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

int mv88e6xxx_port_set_fid(struct mv88e6xxx_chip *chip, int port, u16 fid)
{
 const u16 upper_mask = (mv88e6xxx_num_databases(chip) - 1) >> 4;
 u16 reg;
 int err;

 if (fid >= mv88e6xxx_num_databases(chip))
  return -EINVAL;


 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_BASE_VLAN, &reg);
 if (err)
  return err;

 reg &= 0x0fff;
 reg |= (fid & 0x000f) << 12;

 err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_BASE_VLAN, reg);
 if (err)
  return err;


 if (upper_mask) {
  err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL1,
       &reg);
  if (err)
   return err;

  reg &= ~upper_mask;
  reg |= (fid >> 4) & upper_mask;

  err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL1,
        reg);
  if (err)
   return err;
 }

 dev_dbg(chip->dev, "p%d: FID set to %u\n", port, fid);

 return 0;
}
