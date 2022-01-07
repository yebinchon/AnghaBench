
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_SMI_PHY_CMD ;
 int MV88E6XXX_G2_SMI_PHY_CMD_BUSY ;
 int mv88e6xxx_g2_smi_phy_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g2_smi_phy_cmd(struct mv88e6xxx_chip *chip, u16 cmd)
{
 int err;

 err = mv88e6xxx_g2_write(chip, MV88E6XXX_G2_SMI_PHY_CMD,
     MV88E6XXX_G2_SMI_PHY_CMD_BUSY | cmd);
 if (err)
  return err;

 return mv88e6xxx_g2_smi_phy_wait(chip);
}
