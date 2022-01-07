
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 xor8_buf(void *buf, size_t offset, int len)
{
 u8 *ptr = buf;
 u8 sum = 0;
 int i;
 int end = len + offset;

 for (i = offset; i < end; i++)
  sum ^= ptr[i];

 return sum;
}
