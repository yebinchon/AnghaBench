
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;


 int EINVAL ;


 int tda8083_writereg (struct tda8083_state*,int,int) ;

__attribute__((used)) static int tda8083_set_tone(struct tda8083_state *state,
       enum fe_sec_tone_mode tone)
{
 tda8083_writereg (state, 0x26, 0xf1);

 switch (tone) {
 case 129:
  return tda8083_writereg (state, 0x29, 0x00);
 case 128:
  return tda8083_writereg (state, 0x29, 0x80);
 default:
  return -EINVAL;
 }
}
