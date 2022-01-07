
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;


 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 int mv88e6xxx_read (struct mv88e6xxx_chip*,int,int,int*) ;
 int usleep_range (int,int) ;

int mv88e6xxx_wait_mask(struct mv88e6xxx_chip *chip, int addr, int reg,
   u16 mask, u16 val)
{
 u16 data;
 int err;
 int i;


 for (i = 0; i < 16; i++) {
  err = mv88e6xxx_read(chip, addr, reg, &data);
  if (err)
   return err;

  if ((data & mask) == val)
   return 0;

  usleep_range(1000, 2000);
 }

 dev_err(chip->dev, "Timeout while waiting for switch\n");
 return -ETIMEDOUT;
}
