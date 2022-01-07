
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cs5535_mfgpt_timer {int nr; } ;


 int EIO ;
 int MFGPT_CMP1 ;



 int MSR_MFGPT_IRQ ;
 int MSR_MFGPT_NR ;
 int WARN_ON (int) ;
 int rdmsr (int,int,int) ;
 int wrmsr (int,int,int) ;

int cs5535_mfgpt_toggle_event(struct cs5535_mfgpt_timer *timer, int cmp,
  int event, int enable)
{
 uint32_t msr, mask, value, dummy;
 int shift = (cmp == MFGPT_CMP1) ? 0 : 8;

 if (!timer) {
  WARN_ON(1);
  return -EIO;
 }





 switch (event) {
 case 128:





  msr = MSR_MFGPT_NR;
  mask = 1 << (timer->nr + 24);
  break;

 case 129:
  msr = MSR_MFGPT_NR;
  mask = 1 << (timer->nr + shift);
  break;

 case 130:
  msr = MSR_MFGPT_IRQ;
  mask = 1 << (timer->nr + shift);
  break;

 default:
  return -EIO;
 }

 rdmsr(msr, value, dummy);

 if (enable)
  value |= mask;
 else
  value &= ~mask;

 wrmsr(msr, value, dummy);
 return 0;
}
