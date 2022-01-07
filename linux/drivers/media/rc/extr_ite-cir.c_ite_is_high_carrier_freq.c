
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ITE_HCF_MIN_CARRIER_FREQ ;

__attribute__((used)) static inline bool ite_is_high_carrier_freq(unsigned int freq)
{
 return freq >= ITE_HCF_MIN_CARRIER_FREQ;
}
