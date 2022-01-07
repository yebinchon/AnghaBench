
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_g2_smi_phy_read_data_c45 (struct mv88e6xxx_chip*,int,int,int,int *) ;
 int mv88e6xxx_g2_smi_phy_write_addr_c45 (struct mv88e6xxx_chip*,int,int,int,int) ;

__attribute__((used)) static int mv88e6xxx_g2_smi_phy_read_c45(struct mv88e6xxx_chip *chip,
      bool external, int port, int reg,
      u16 *data)
{
 int dev = (reg >> 16) & 0x1f;
 int addr = reg & 0xffff;
 int err;

 err = mv88e6xxx_g2_smi_phy_write_addr_c45(chip, external, port, dev,
        addr);
 if (err)
  return err;

 return mv88e6xxx_g2_smi_phy_read_data_c45(chip, external, port, dev,
        data);
}
