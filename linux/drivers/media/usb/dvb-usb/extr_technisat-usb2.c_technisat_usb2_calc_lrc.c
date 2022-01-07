
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;



__attribute__((used)) static u8 technisat_usb2_calc_lrc(const u8 *b, u16 length)
{
 u8 lrc = 0;
 while (--length)
  lrc ^= *b++;
 return lrc;
}
