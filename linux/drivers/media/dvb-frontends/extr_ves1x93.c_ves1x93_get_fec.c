
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ves1x93_state {int dummy; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;


 int FEC_1_2 ;
 int ves1x93_readreg (struct ves1x93_state*,int) ;

__attribute__((used)) static enum fe_code_rate ves1x93_get_fec(struct ves1x93_state *state)
{
 return FEC_1_2 + ((ves1x93_readreg (state, 0x0d) >> 4) & 0x7);
}
