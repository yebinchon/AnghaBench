
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



u8 cx231xx_find_next_SAV_EAV(u8 *p_buffer, u32 buffer_size, u32 *p_bytes_used)
{
 u32 i;
 u8 sav_eav = 0;






 if (buffer_size < 4) {
  *p_bytes_used = buffer_size;
  return 0;
 }

 for (i = 0; i < (buffer_size - 3); i++) {

  if ((p_buffer[i] == 0xFF) &&
      (p_buffer[i + 1] == 0x00) && (p_buffer[i + 2] == 0x00)) {

   *p_bytes_used = i + 4;
   sav_eav = p_buffer[i + 3];
   return sav_eav;
  }
 }

 *p_bytes_used = buffer_size;
 return 0;
}
