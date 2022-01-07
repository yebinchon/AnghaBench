
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int* fm10k_crc_16b_table ;

__attribute__((used)) static u16 fm10k_crc_16b(const u32 *data, u16 seed, u16 len)
{
 u32 result = seed;

 while (len--) {
  result ^= *(data++);
  result = (result >> 8) ^ fm10k_crc_16b_table[result & 0xFF];
  result = (result >> 8) ^ fm10k_crc_16b_table[result & 0xFF];

  if (!(len--))
   break;

  result = (result >> 8) ^ fm10k_crc_16b_table[result & 0xFF];
  result = (result >> 8) ^ fm10k_crc_16b_table[result & 0xFF];
 }

 return (u16)result;
}
