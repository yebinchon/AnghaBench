
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int bus; } ;


 int mdiobus_write_nested (int ,int,int,int ) ;

__attribute__((used)) static int mv88e6xxx_smi_direct_write(struct mv88e6xxx_chip *chip,
          int dev, int reg, u16 data)
{
 int ret;

 ret = mdiobus_write_nested(chip->bus, dev, reg, data);
 if (ret < 0)
  return ret;

 return 0;
}
