
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;


 int EINVAL ;


 int tda8083_writereg (struct tda8083_state*,int,int) ;

__attribute__((used)) static int tda8083_set_voltage(struct tda8083_state *state,
          enum fe_sec_voltage voltage)
{
 switch (voltage) {
 case 129:
  return tda8083_writereg (state, 0x20, 0x00);
 case 128:
  return tda8083_writereg (state, 0x20, 0x11);
 default:
  return -EINVAL;
 }
}
