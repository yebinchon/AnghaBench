
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int hweight16 (int ) ;

__attribute__((used)) static int sm_get_lba(uint8_t *lba)
{

 if ((lba[0] & 0xF8) != 0x10)
  return -2;


 if (hweight16(*(uint16_t *)lba) & 1)
  return -2;

 return (lba[1] >> 1) | ((lba[0] & 0x07) << 7);
}
