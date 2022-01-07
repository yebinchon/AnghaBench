
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int crc32_le (int ,int *,int) ;
 int sja1105_unpack (void*,int *,int,int ,int) ;

u32 sja1105_crc32(const void *buf, size_t len)
{
 unsigned int i;
 u64 word;
 u32 crc;


 crc = ~0;
 for (i = 0; i < len; i += 4) {
  sja1105_unpack((void *)buf + i, &word, 31, 0, 4);
  crc = crc32_le(crc, (u8 *)&word, 4);
 }
 return ~crc;
}
