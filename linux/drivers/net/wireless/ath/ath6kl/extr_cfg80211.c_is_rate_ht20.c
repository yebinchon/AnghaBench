
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int s32 ;


 int ARRAY_SIZE (int const*) ;

__attribute__((used)) static bool is_rate_ht20(s32 rate, u8 *mcs, bool *sgi)
{
 static const s32 ht20[] = { 6500, 13000, 19500, 26000, 39000,
  52000, 58500, 65000, 72200
 };
 u8 i;

 for (i = 0; i < ARRAY_SIZE(ht20); i++) {
  if (rate == ht20[i]) {
   if (i == ARRAY_SIZE(ht20) - 1)

    *sgi = 1;
   else
    *sgi = 0;

   *mcs = i;
   return 1;
  }
 }
 return 0;
}
