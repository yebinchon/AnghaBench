
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;



__attribute__((used)) static void dr_crc32_calc_lookup_entry(u32 (*tbl)[256], u8 i, u8 j)
{
 tbl[i][j] = (tbl[i - 1][j] >> 8) ^ tbl[0][tbl[i - 1][j] & 0xff];
}
