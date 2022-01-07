
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ p54_get_band_from_freq (int ) ;

__attribute__((used)) static int same_band(u16 freq, u16 freq2)
{
 return p54_get_band_from_freq(freq) == p54_get_band_from_freq(freq2);
}
