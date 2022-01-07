
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct brcms_c_rateset {scalar_t__* mcs; } ;


 size_t MCSSET_LEN ;

void brcms_c_rateset_mcs_clear(struct brcms_c_rateset *rateset)
{
 uint i;
 for (i = 0; i < MCSSET_LEN; i++)
  rateset->mcs[i] = 0;
}
