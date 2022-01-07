
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_SWITCH_MGMT ;
 int MV88E6XXX_G2_SWITCH_MGMT_RSVD2CPU ;
 int mv88e6xxx_g2_read (struct mv88e6xxx_chip*,int ,int *) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int ) ;

__attribute__((used)) static int mv88e6xxx_g2_switch_mgmt_rsvd2cpu(struct mv88e6xxx_chip *chip,
          bool enable)
{
 u16 val;
 int err;

 err = mv88e6xxx_g2_read(chip, MV88E6XXX_G2_SWITCH_MGMT, &val);
 if (err)
  return err;

 if (enable)
  val |= MV88E6XXX_G2_SWITCH_MGMT_RSVD2CPU;
 else
  val &= ~MV88E6XXX_G2_SWITCH_MGMT_RSVD2CPU;

 return mv88e6xxx_g2_write(chip, MV88E6XXX_G2_SWITCH_MGMT, val);
}
