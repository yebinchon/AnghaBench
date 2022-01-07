
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int UR_REG_IMM ;

__attribute__((used)) static bool unreg_is_imm(u16 reg)
{
 return (reg & UR_REG_IMM) == UR_REG_IMM;
}
