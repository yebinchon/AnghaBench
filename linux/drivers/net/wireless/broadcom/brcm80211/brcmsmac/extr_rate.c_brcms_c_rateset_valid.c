
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct brcms_c_rateset {size_t count; int* rates; } ;


 int BRCMS_RATE_FLAG ;

__attribute__((used)) static bool brcms_c_rateset_valid(struct brcms_c_rateset *rs, bool check_brate)
{
 uint idx;

 if (!rs->count)
  return 0;

 if (!check_brate)
  return 1;


 for (idx = 0; idx < rs->count; idx++) {
  if (rs->rates[idx] & BRCMS_RATE_FLAG)
   return 1;
 }
 return 0;
}
