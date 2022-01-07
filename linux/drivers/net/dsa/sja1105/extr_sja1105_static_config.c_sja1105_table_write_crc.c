
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int sja1105_crc32 (int *,int) ;
 int sja1105_pack (int *,int *,int,int ,int) ;

__attribute__((used)) static void sja1105_table_write_crc(u8 *table_start, u8 *crc_ptr)
{
 u64 computed_crc;
 int len_bytes;

 len_bytes = (uintptr_t)(crc_ptr - table_start);
 computed_crc = sja1105_crc32(table_start, len_bytes);
 sja1105_pack(crc_ptr, &computed_crc, 31, 0, 4);
}
