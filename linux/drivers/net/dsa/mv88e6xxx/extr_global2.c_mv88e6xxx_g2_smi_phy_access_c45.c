
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_g2_smi_phy_access (struct mv88e6xxx_chip*,int,int,int ,int,int) ;

__attribute__((used)) static int mv88e6xxx_g2_smi_phy_access_c45(struct mv88e6xxx_chip *chip,
        bool external, u16 op, int port,
        int dev)
{
 return mv88e6xxx_g2_smi_phy_access(chip, external, 1, op, port, dev);
}
