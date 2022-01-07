
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u16 ;



void ice_fill_rss_lut(u8 *lut, u16 rss_table_size, u16 rss_size)
{
 u16 i;

 for (i = 0; i < rss_table_size; i++)
  lut[i] = i % rss_size;
}
