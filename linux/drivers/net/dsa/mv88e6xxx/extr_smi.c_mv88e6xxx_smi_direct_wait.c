
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int BIT (int) ;
 int ETIMEDOUT ;
 int mv88e6xxx_smi_direct_read (struct mv88e6xxx_chip*,int,int,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mv88e6xxx_smi_direct_wait(struct mv88e6xxx_chip *chip,
         int dev, int reg, int bit, int val)
{
 u16 data;
 int err;
 int i;

 for (i = 0; i < 16; i++) {
  err = mv88e6xxx_smi_direct_read(chip, dev, reg, &data);
  if (err)
   return err;

  if (!!(data & BIT(bit)) == !!val)
   return 0;

  usleep_range(1000, 2000);
 }

 return -ETIMEDOUT;
}
