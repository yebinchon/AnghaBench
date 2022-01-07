
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_ATU_CTL ;
 int MV88E6XXX_G1_ATU_CTL_LEARN2ALL ;
 int mv88e6xxx_g1_read (struct mv88e6xxx_chip*,int ,int *) ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int ) ;

int mv88e6xxx_g1_atu_set_learn2all(struct mv88e6xxx_chip *chip, bool learn2all)
{
 u16 val;
 int err;

 err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_ATU_CTL, &val);
 if (err)
  return err;

 if (learn2all)
  val |= MV88E6XXX_G1_ATU_CTL_LEARN2ALL;
 else
  val &= ~MV88E6XXX_G1_ATU_CTL_LEARN2ALL;

 return mv88e6xxx_g1_write(chip, MV88E6XXX_G1_ATU_CTL, val);
}
