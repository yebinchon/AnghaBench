
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int gpmc_cs_read_reg (int,int) ;
 int gpmc_cs_write_reg (int,int,int ) ;

__attribute__((used)) static inline void gpmc_cs_modify_reg(int cs, int reg, u32 mask, bool value)
{
 u32 l;

 l = gpmc_cs_read_reg(cs, reg);
 if (value)
  l |= mask;
 else
  l &= ~mask;
 gpmc_cs_write_reg(cs, reg, l);
}
