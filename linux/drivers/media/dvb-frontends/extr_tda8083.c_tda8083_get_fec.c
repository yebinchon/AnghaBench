
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tda8083_state {int dummy; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;
 int tda8083_readreg (struct tda8083_state*,int) ;

__attribute__((used)) static enum fe_code_rate tda8083_get_fec(struct tda8083_state *state)
{
 u8 index;
 static enum fe_code_rate fec_tab[] = {
  128, 135, 134, 133,
  132, 131, 130, 129
 };

 index = tda8083_readreg(state, 0x0e) & 0x07;

 return fec_tab [index];
}
