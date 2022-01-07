
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_STATS_COUNTER_01 ;
 int MV88E6XXX_G1_STATS_COUNTER_32 ;
 int MV88E6XXX_G1_STATS_OP ;
 int MV88E6XXX_G1_STATS_OP_BUSY ;
 int MV88E6XXX_G1_STATS_OP_READ_CAPTURED ;
 int mv88e6xxx_g1_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g1_stats_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

void mv88e6xxx_g1_stats_read(struct mv88e6xxx_chip *chip, int stat, u32 *val)
{
 u32 value;
 u16 reg;
 int err;

 *val = 0;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_STATS_OP,
     MV88E6XXX_G1_STATS_OP_BUSY |
     MV88E6XXX_G1_STATS_OP_READ_CAPTURED | stat);
 if (err)
  return;

 err = mv88e6xxx_g1_stats_wait(chip);
 if (err)
  return;

 err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_STATS_COUNTER_32, &reg);
 if (err)
  return;

 value = reg << 16;

 err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_STATS_COUNTER_01, &reg);
 if (err)
  return;

 *val = value | reg;
}
