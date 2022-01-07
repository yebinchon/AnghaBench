
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;



__attribute__((used)) static inline u8 spectral_max_index(u8 *bins, int num_bins)
{
 s8 m = (bins[2] & 0xfc) >> 2;
 u8 zero_idx = num_bins / 2;





 if (m & 0x20) {
  m &= ~0x20;
  m |= 0xe0;
 }






 m += zero_idx;


 if (m < 0 || m > num_bins - 1)
  m = 0;

 return m;
}
