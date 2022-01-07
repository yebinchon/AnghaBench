
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int** dr_ste_crc_tab32 ;

u32 mlx5dr_crc32_slice8_calc(const void *input_data, size_t length)
{
 const u32 *curr = (const u32 *)input_data;
 const u8 *curr_char;
 u32 crc = 0, one, two;

 if (!input_data)
  return 0;


 while (length >= 8) {
  one = *curr++ ^ crc;
  two = *curr++;

  crc = dr_ste_crc_tab32[0][(two >> 24) & 0xff]
   ^ dr_ste_crc_tab32[1][(two >> 16) & 0xff]
   ^ dr_ste_crc_tab32[2][(two >> 8) & 0xff]
   ^ dr_ste_crc_tab32[3][two & 0xff]
   ^ dr_ste_crc_tab32[4][(one >> 24) & 0xff]
   ^ dr_ste_crc_tab32[5][(one >> 16) & 0xff]
   ^ dr_ste_crc_tab32[6][(one >> 8) & 0xff]
   ^ dr_ste_crc_tab32[7][one & 0xff];

  length -= 8;
 }

 curr_char = (const u8 *)curr;

 while (length-- != 0)
  crc = (crc >> 8) ^ dr_ste_crc_tab32[0][(crc & 0xff)
   ^ *curr_char++];

 return ((crc >> 24) & 0xff) | ((crc << 8) & 0xff0000) |
  ((crc >> 8) & 0xff00) | ((crc << 24) & 0xff000000);
}
