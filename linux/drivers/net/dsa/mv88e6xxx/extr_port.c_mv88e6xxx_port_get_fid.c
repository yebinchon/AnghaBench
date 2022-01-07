
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PORT_BASE_VLAN ;
 int MV88E6XXX_PORT_CTL1 ;
 int mv88e6xxx_num_databases (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;

int mv88e6xxx_port_get_fid(struct mv88e6xxx_chip *chip, int port, u16 *fid)
{
 const u16 upper_mask = (mv88e6xxx_num_databases(chip) - 1) >> 4;
 u16 reg;
 int err;


 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_BASE_VLAN, &reg);
 if (err)
  return err;

 *fid = (reg & 0xf000) >> 12;


 if (upper_mask) {
  err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL1,
       &reg);
  if (err)
   return err;

  *fid |= (reg & upper_mask) << 4;
 }

 return 0;
}
