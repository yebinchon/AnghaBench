
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static int check_mac_tt(u8 *buf)
{
 int i;
 u16 tmp = 0xffff;

 for (i = 0; i < 8; i++) {
  tmp = (tmp << 8) | ((tmp >> 8) ^ buf[i]);
  tmp ^= (tmp >> 4) & 0x0f;
  tmp ^= (tmp << 12) ^ ((tmp & 0xff) << 5);
 }
 tmp ^= 0xffff;
 return (((tmp >> 8) ^ buf[8]) | ((tmp & 0xff) ^ buf[9]));
}
