
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int ITE_HCF_MAX_CARRIER_FREQ ;
 unsigned int ITE_LCF_MIN_CARRIER_FREQ ;
 int ITE_TXMPW_A ;
 int ITE_TXMPW_B ;
 int ITE_TXMPW_C ;
 int ITE_TXMPW_D ;
 int ITE_TXMPW_E ;
 scalar_t__ ite_is_high_carrier_freq (unsigned int) ;

__attribute__((used)) static u8 ite_get_pulse_width_bits(unsigned int freq, int duty_cycle)
{
 unsigned long period_ns, on_ns;


 if (freq < ITE_LCF_MIN_CARRIER_FREQ)
  freq = ITE_LCF_MIN_CARRIER_FREQ;
 if (freq > ITE_HCF_MAX_CARRIER_FREQ)
  freq = ITE_HCF_MAX_CARRIER_FREQ;

 period_ns = 1000000000UL / freq;
 on_ns = period_ns * duty_cycle / 100;

 if (ite_is_high_carrier_freq(freq)) {
  if (on_ns < 750)
   return ITE_TXMPW_A;

  else if (on_ns < 850)
   return ITE_TXMPW_B;

  else if (on_ns < 950)
   return ITE_TXMPW_C;

  else if (on_ns < 1080)
   return ITE_TXMPW_D;

  else
   return ITE_TXMPW_E;
 } else {
  if (on_ns < 6500)
   return ITE_TXMPW_A;

  else if (on_ns < 7850)
   return ITE_TXMPW_B;

  else if (on_ns < 9650)
   return ITE_TXMPW_C;

  else if (on_ns < 11950)
   return ITE_TXMPW_D;

  else
   return ITE_TXMPW_E;
 }
}
