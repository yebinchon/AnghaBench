
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ves1x93_state {int dummy; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;


 int EINVAL ;
 int FEC_1_2 ;
 int FEC_8_9 ;
 int FEC_AUTO ;
 int ves1x93_writereg (struct ves1x93_state*,int,int) ;

__attribute__((used)) static int ves1x93_set_fec(struct ves1x93_state *state, enum fe_code_rate fec)
{
 if (fec == FEC_AUTO)
  return ves1x93_writereg (state, 0x0d, 0x08);
 else if (fec < FEC_1_2 || fec > FEC_8_9)
  return -EINVAL;
 else
  return ves1x93_writereg (state, 0x0d, fec - FEC_1_2);
}
