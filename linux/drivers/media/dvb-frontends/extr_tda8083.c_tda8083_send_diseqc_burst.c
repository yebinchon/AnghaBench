
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
typedef enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;


 int EINVAL ;


 int tda8083_wait_diseqc_fifo (struct tda8083_state*,int) ;
 int tda8083_writereg (struct tda8083_state*,int,int) ;

__attribute__((used)) static int tda8083_send_diseqc_burst(struct tda8083_state *state,
         enum fe_sec_mini_cmd burst)
{
 switch (burst) {
 case 129:
  tda8083_writereg (state, 0x29, (5 << 2));
  break;
 case 128:
  tda8083_writereg (state, 0x29, (7 << 2));
  break;
 default:
  return -EINVAL;
 }

 tda8083_wait_diseqc_fifo (state, 100);

 return 0;
}
