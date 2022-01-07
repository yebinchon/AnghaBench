
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void copy_codes(u8 *dst, u8 *src, unsigned int count)
{
 u8 c, last = 0xff;

 while (count--) {
  c = *src++;
  if ((c & 0xf0) == last) {
   *dst++ = 0x70 | (c & 0xf);
  } else {
   *dst++ = c;
   last = c & 0xf0;
  }
 }
}
