
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ath_regulatory {scalar_t__ country_code; } ;


 scalar_t__ CTRY_INDIA ;

__attribute__((used)) static bool ath_is_radar_freq(u16 center_freq,
         struct ath_regulatory *reg)

{
 if (reg->country_code == CTRY_INDIA)
  return (center_freq >= 5500 && center_freq <= 5700);
 return (center_freq >= 5260 && center_freq <= 5700);
}
