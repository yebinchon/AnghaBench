
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int u8 ;
struct brcms_c_rateset {size_t count; int* rates; int* mcs; } ;
typedef int rateset ;


 int BRCMS_RATE_MASK ;
 int BRCM_MAXRATE ;
 size_t MCSSET_LEN ;
 scalar_t__ brcms_c_rateset_valid (struct brcms_c_rateset*,int) ;
 int memset (int*,int ,int) ;
 scalar_t__* rate_info ;

bool
brcms_c_rate_hwrs_filter_sort_validate(struct brcms_c_rateset *rs,
       const struct brcms_c_rateset *hw_rs,
       bool check_brate, u8 txstreams)
{
 u8 rateset[BRCM_MAXRATE + 1];
 u8 r;
 uint count;
 uint i;

 memset(rateset, 0, sizeof(rateset));
 count = rs->count;

 for (i = 0; i < count; i++) {

  r = (int)rs->rates[i] & BRCMS_RATE_MASK;
  if ((r > BRCM_MAXRATE) || (rate_info[r] == 0))
   continue;
  rateset[r] = rs->rates[i];
 }


 count = 0;
 for (i = 0; i < hw_rs->count; i++) {
  r = hw_rs->rates[i] & BRCMS_RATE_MASK;
  if (rateset[r])
   rs->rates[count++] = rateset[r];
 }

 rs->count = count;


 for (i = 0; i < MCSSET_LEN; i++)
  rs->mcs[i] = (rs->mcs[i] & hw_rs->mcs[i]);

 if (brcms_c_rateset_valid(rs, check_brate))
  return 1;
 else
  return 0;
}
