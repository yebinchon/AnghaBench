
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sm_oob {scalar_t__ lba_copy2; scalar_t__ lba_copy1; } ;


 int SM_OOB_SIZE ;
 int is_power_of_2 (int) ;
 int memcmp (struct sm_oob*,int const*,int ) ;
 int sm_get_lba (scalar_t__) ;

__attribute__((used)) static int sm_read_lba(struct sm_oob *oob)
{
 static const uint32_t erased_pattern[4] = {
  0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF };

 uint16_t lba_test;
 int lba;


 if (!memcmp(oob, erased_pattern, SM_OOB_SIZE))
  return -1;


 lba_test = *(uint16_t *)oob->lba_copy1 ^ *(uint16_t*)oob->lba_copy2;
 if (lba_test && !is_power_of_2(lba_test))
  return -2;


 lba = sm_get_lba(oob->lba_copy1);

 if (lba == -2)
  lba = sm_get_lba(oob->lba_copy2);

 return lba;
}
