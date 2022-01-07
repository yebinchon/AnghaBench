
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (long) ;

__attribute__((used)) static unsigned long convert_to_twos(long numeric, unsigned long bits_len)
{
 unsigned char temp;

 if (numeric >= 0)
  return numeric;
 else {
  temp = ~(abs(numeric) & 0xFF);
  temp += 1;
  return temp;
 }
}
