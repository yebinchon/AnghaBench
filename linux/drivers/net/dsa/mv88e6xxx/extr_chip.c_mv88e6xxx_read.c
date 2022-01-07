
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;


 int assert_reg_lock (struct mv88e6xxx_chip*) ;
 int dev_dbg (int ,char*,int,int,int ) ;
 int mv88e6xxx_smi_read (struct mv88e6xxx_chip*,int,int,int *) ;

int mv88e6xxx_read(struct mv88e6xxx_chip *chip, int addr, int reg, u16 *val)
{
 int err;

 assert_reg_lock(chip);

 err = mv88e6xxx_smi_read(chip, addr, reg, val);
 if (err)
  return err;

 dev_dbg(chip->dev, "<- addr: 0x%.2x reg: 0x%.2x val: 0x%.4x\n",
  addr, reg, *val);

 return 0;
}
