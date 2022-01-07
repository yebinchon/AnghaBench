
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct brcm_rateset {size_t count; int* rates; } ;


 int BRCMS_RATE_FLAG ;
 int BRCMS_RATE_MASK ;

__attribute__((used)) static void brcms_set_basic_rate(struct brcm_rateset *rs, u16 rate, bool is_br)
{
 u32 i;

 for (i = 0; i < rs->count; i++) {
  if (rate != (rs->rates[i] & 0x7f))
   continue;

  if (is_br)
   rs->rates[i] |= BRCMS_RATE_FLAG;
  else
   rs->rates[i] &= BRCMS_RATE_MASK;
  return;
 }
}
