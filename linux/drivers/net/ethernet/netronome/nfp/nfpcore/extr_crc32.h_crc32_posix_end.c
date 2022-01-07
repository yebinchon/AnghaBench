
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;


 int crc32_be (int ,size_t*,int) ;

__attribute__((used)) static inline u32 crc32_posix_end(u32 crc, size_t total_len)
{

 while (total_len != 0) {
  u8 c = total_len & 0xff;

  crc = crc32_be(crc, &c, 1);
  total_len >>= 8;
 }

 return ~crc;
}
