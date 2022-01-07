
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
typedef int u16 ;
typedef int s8 ;



__attribute__((used)) static uint8_t get_max_exp(s8 max_index, u16 max_magnitude, size_t bin_len,
      u8 *data)
{
 int dc_pos;
 u8 max_exp;

 dc_pos = bin_len / 2;


 if (dc_pos < max_index || -dc_pos >= max_index)
  return 0;

 for (max_exp = 0; max_exp < 8; max_exp++) {
  if (data[dc_pos + max_index] == (max_magnitude >> max_exp))
   break;
 }


 if (data[dc_pos + max_index] != (max_magnitude >> max_exp))
  return 0;

 return max_exp;
}
