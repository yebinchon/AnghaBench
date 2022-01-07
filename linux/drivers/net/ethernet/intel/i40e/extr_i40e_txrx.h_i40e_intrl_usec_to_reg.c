
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int INTRL_ENA ;

__attribute__((used)) static inline u16 i40e_intrl_usec_to_reg(int intrl)
{
 if (intrl >> 2)
  return ((intrl >> 2) | INTRL_ENA);
 else
  return 0;
}
