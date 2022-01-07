
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6185_G1_CTL2_CASCADE_PORT_MASK ;
 int __bf_shf (int const) ;
 int mv88e6xxx_g1_ctl2_mask (struct mv88e6xxx_chip*,int const,int) ;

int mv88e6185_g1_set_cascade_port(struct mv88e6xxx_chip *chip, int port)
{
 const u16 mask = MV88E6185_G1_CTL2_CASCADE_PORT_MASK;

 return mv88e6xxx_g1_ctl2_mask(chip, mask, port << __bf_shf(mask));
}
