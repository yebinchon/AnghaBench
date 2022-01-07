
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int crc32_be (int ,void const*,size_t) ;
 int crc32_posix_end (int ,size_t) ;

__attribute__((used)) static inline u32 crc32_posix(const void *buff, size_t len)
{
 return crc32_posix_end(crc32_be(0, buff, len), len);
}
