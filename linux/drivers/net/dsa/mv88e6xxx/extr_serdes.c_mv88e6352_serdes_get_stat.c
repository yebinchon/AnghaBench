
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u64 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;
struct mv88e6352_serdes_hw_stat {int sizeof_stat; scalar_t__ reg; } ;


 int dev_err (int ,char*) ;
 int mv88e6352_serdes_read (struct mv88e6xxx_chip*,scalar_t__,int*) ;

__attribute__((used)) static uint64_t mv88e6352_serdes_get_stat(struct mv88e6xxx_chip *chip,
       struct mv88e6352_serdes_hw_stat *stat)
{
 u64 val = 0;
 u16 reg;
 int err;

 err = mv88e6352_serdes_read(chip, stat->reg, &reg);
 if (err) {
  dev_err(chip->dev, "failed to read statistic\n");
  return 0;
 }

 val = reg;

 if (stat->sizeof_stat == 32) {
  err = mv88e6352_serdes_read(chip, stat->reg + 1, &reg);
  if (err) {
   dev_err(chip->dev, "failed to read statistic\n");
   return 0;
  }
  val = val << 16 | reg;
 }

 return val;
}
