
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mv88e6xxx_hw_stat {int type; int reg; int size; } ;
struct mv88e6xxx_chip {int dummy; } ;





 int U64_MAX ;
 int mv88e6xxx_g1_stats_read (struct mv88e6xxx_chip*,int,int*) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int,int*) ;

__attribute__((used)) static uint64_t _mv88e6xxx_get_ethtool_stat(struct mv88e6xxx_chip *chip,
         struct mv88e6xxx_hw_stat *s,
         int port, u16 bank1_select,
         u16 histogram)
{
 u32 low;
 u32 high = 0;
 u16 reg = 0;
 int err;
 u64 value;

 switch (s->type) {
 case 128:
  err = mv88e6xxx_port_read(chip, port, s->reg, &reg);
  if (err)
   return U64_MAX;

  low = reg;
  if (s->size == 4) {
   err = mv88e6xxx_port_read(chip, port, s->reg + 1, &reg);
   if (err)
    return U64_MAX;
   low |= ((u32)reg) << 16;
  }
  break;
 case 129:
  reg = bank1_select;

 case 130:
  reg |= s->reg | histogram;
  mv88e6xxx_g1_stats_read(chip, reg, &low);
  if (s->size == 8)
   mv88e6xxx_g1_stats_read(chip, reg + 1, &high);
  break;
 default:
  return U64_MAX;
 }
 value = (((u64)high) << 32) | low;
 return value;
}
