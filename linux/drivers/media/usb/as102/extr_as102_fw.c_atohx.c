
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (char) ;

__attribute__((used)) static unsigned char atohx(unsigned char *dst, char *src)
{
 unsigned char value = 0;

 char msb = tolower(*src) - '0';
 char lsb = tolower(*(src + 1)) - '0';

 if (msb > 9)
  msb -= 7;
 if (lsb > 9)
  lsb -= 7;

 *dst = value = ((msb & 0xF) << 4) | (lsb & 0xF);
 return value;
}
