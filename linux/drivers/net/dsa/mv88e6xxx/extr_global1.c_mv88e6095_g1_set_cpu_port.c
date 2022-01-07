
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6185_G1_MONITOR_CTL ;
 int MV88E6185_G1_MONITOR_CTL_ARP_DEST_MASK ;
 int __bf_shf (int) ;
 int mv88e6xxx_g1_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6095_g1_set_cpu_port(struct mv88e6xxx_chip *chip, int port)
{
 u16 reg;
 int err;

 err = mv88e6xxx_g1_read(chip, MV88E6185_G1_MONITOR_CTL, &reg);
 if (err)
  return err;

 reg &= ~MV88E6185_G1_MONITOR_CTL_ARP_DEST_MASK;
 reg |= port << __bf_shf(MV88E6185_G1_MONITOR_CTL_ARP_DEST_MASK);

 return mv88e6xxx_g1_write(chip, MV88E6185_G1_MONITOR_CTL, reg);
}
