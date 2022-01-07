
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MAX2175_BAND_AM ;
 int MAX2175_BAND_FM ;
 int MAX2175_BAND_VHF ;

__attribute__((used)) static int max2175_band_from_freq(u32 freq)
{
 if (freq >= 144000 && freq <= 26100000)
  return MAX2175_BAND_AM;
 else if (freq >= 65000000 && freq <= 108000000)
  return MAX2175_BAND_FM;

 return MAX2175_BAND_VHF;
}
