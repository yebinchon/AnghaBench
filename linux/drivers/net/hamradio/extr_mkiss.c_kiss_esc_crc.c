
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESC_END ;
 int ESC_ESC ;

__attribute__((used)) static int kiss_esc_crc(unsigned char *s, unsigned char *d, unsigned short crc,
 int len)
{
 unsigned char *ptr = d;
 unsigned char c=0;

 *ptr++ = 129;
 while (len > 0) {
  if (len > 2)
   c = *s++;
  else if (len > 1)
   c = crc >> 8;
  else
   c = crc & 0xff;

  len--;

  switch (c) {
  case 129:
   *ptr++ = 128;
   *ptr++ = ESC_END;
   break;
  case 128:
   *ptr++ = 128;
   *ptr++ = ESC_ESC;
   break;
  default:
   *ptr++ = c;
   break;
  }
 }
 *ptr++ = 129;

 return ptr - d;
}
