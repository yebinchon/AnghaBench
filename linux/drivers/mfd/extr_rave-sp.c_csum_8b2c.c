
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void csum_8b2c(const u8 *buf, size_t size, u8 *crc)
{
 *crc = *buf++;
 size--;

 while (size--)
  *crc += *buf++;

 *crc = 1 + ~(*crc);
}
