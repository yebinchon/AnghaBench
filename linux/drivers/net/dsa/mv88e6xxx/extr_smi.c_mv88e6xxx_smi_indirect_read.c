
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int sw_addr; } ;


 int MV88E6XXX_SMI_CMD ;
 int MV88E6XXX_SMI_CMD_BUSY ;
 int MV88E6XXX_SMI_CMD_MODE_22 ;
 int MV88E6XXX_SMI_CMD_OP_22_READ ;
 int MV88E6XXX_SMI_DATA ;
 int mv88e6xxx_smi_direct_read (struct mv88e6xxx_chip*,int ,int ,int *) ;
 int mv88e6xxx_smi_direct_wait (struct mv88e6xxx_chip*,int ,int ,int,int ) ;
 int mv88e6xxx_smi_direct_write (struct mv88e6xxx_chip*,int ,int ,int) ;

__attribute__((used)) static int mv88e6xxx_smi_indirect_read(struct mv88e6xxx_chip *chip,
           int dev, int reg, u16 *data)
{
 int err;

 err = mv88e6xxx_smi_direct_wait(chip, chip->sw_addr,
     MV88E6XXX_SMI_CMD, 15, 0);
 if (err)
  return err;

 err = mv88e6xxx_smi_direct_write(chip, chip->sw_addr,
      MV88E6XXX_SMI_CMD,
      MV88E6XXX_SMI_CMD_BUSY |
      MV88E6XXX_SMI_CMD_MODE_22 |
      MV88E6XXX_SMI_CMD_OP_22_READ |
      (dev << 5) | reg);
 if (err)
  return err;

 err = mv88e6xxx_smi_direct_wait(chip, chip->sw_addr,
     MV88E6XXX_SMI_CMD, 15, 0);
 if (err)
  return err;

 return mv88e6xxx_smi_direct_read(chip, chip->sw_addr,
      MV88E6XXX_SMI_DATA, data);
}
