
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int s32 ;


 int ARRAY_SIZE (int const*) ;

__attribute__((used)) static bool is_rate_ht40(s32 rate, u8 *mcs, bool *sgi)
{
 static const s32 ht40[] = { 13500, 27000, 40500, 54000,
  81000, 108000, 121500, 135000,
  150000
 };
 u8 i;

 for (i = 0; i < ARRAY_SIZE(ht40); i++) {
  if (rate == ht40[i]) {
   if (i == ARRAY_SIZE(ht40) - 1)

    *sgi = 1;
   else
    *sgi = 0;

   *mcs = i;
   return 1;
  }
 }

 return 0;
}
