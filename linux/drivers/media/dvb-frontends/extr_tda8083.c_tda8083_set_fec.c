
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;


 int EINVAL ;
 int FEC_1_2 ;
 int FEC_8_9 ;
 int FEC_AUTO ;
 int tda8083_writereg (struct tda8083_state*,int,int) ;

__attribute__((used)) static int tda8083_set_fec(struct tda8083_state *state, enum fe_code_rate fec)
{
 if (fec == FEC_AUTO)
  return tda8083_writereg (state, 0x07, 0xff);

 if (fec >= FEC_1_2 && fec <= FEC_8_9)
  return tda8083_writereg (state, 0x07, 1 << (FEC_8_9 - fec));

 return -EINVAL;
}
