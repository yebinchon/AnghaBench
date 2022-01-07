
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct sm_oob {int* lba_copy1; int* lba_copy2; } ;


 int WARN_ON (int) ;
 int hweight16 (int) ;

__attribute__((used)) static void sm_write_lba(struct sm_oob *oob, uint16_t lba)
{
 uint8_t tmp[2];

 WARN_ON(lba >= 1000);

 tmp[0] = 0x10 | ((lba >> 7) & 0x07);
 tmp[1] = (lba << 1) & 0xFF;

 if (hweight16(*(uint16_t *)tmp) & 0x01)
  tmp[1] |= 1;

 oob->lba_copy1[0] = oob->lba_copy2[0] = tmp[0];
 oob->lba_copy1[1] = oob->lba_copy2[1] = tmp[1];
}
