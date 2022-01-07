
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DR_STE_CRC_POLY ;
 int dr_crc32_calc_lookup_entry (int**,int,int) ;
 int** dr_ste_crc_tab32 ;

void mlx5dr_crc32_init_table(void)
{
 u32 crc, i, j;

 for (i = 0; i < 256; i++) {
  crc = i;
  for (j = 0; j < 8; j++) {
   if (crc & 0x00000001L)
    crc = (crc >> 1) ^ DR_STE_CRC_POLY;
   else
    crc = crc >> 1;
  }
  dr_ste_crc_tab32[0][i] = crc;
 }


 for (i = 0; i < 256; i++) {
  dr_crc32_calc_lookup_entry(dr_ste_crc_tab32, 1, i);
  dr_crc32_calc_lookup_entry(dr_ste_crc_tab32, 2, i);
  dr_crc32_calc_lookup_entry(dr_ste_crc_tab32, 3, i);
  dr_crc32_calc_lookup_entry(dr_ste_crc_tab32, 4, i);
  dr_crc32_calc_lookup_entry(dr_ste_crc_tab32, 5, i);
  dr_crc32_calc_lookup_entry(dr_ste_crc_tab32, 6, i);
  dr_crc32_calc_lookup_entry(dr_ste_crc_tab32, 7, i);
 }
}
