
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int addr_crc(unsigned char *addr)
{
 int crc = 0;
 int i;

 for (i = 0; i < 6; i++) {
  int j;

  crc = (crc ^ addr[i]) << 8;
  for (j = 7; j >= 0; j--) {
   if (crc & (0x100 << j))
    crc ^= 0x107 << j;
  }
 }

 return crc;
}
