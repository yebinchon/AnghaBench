
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;






__attribute__((used)) static inline int spu_reg_is_port_reg(u16 reg)
{
 switch (reg) {
 case 128:
 case 130:
 case 129:
  return 1;
 default:
  return 0;
 }
}
