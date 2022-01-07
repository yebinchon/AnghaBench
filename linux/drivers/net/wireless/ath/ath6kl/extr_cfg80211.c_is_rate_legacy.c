
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int s32 ;


 size_t ARRAY_SIZE (int const*) ;

__attribute__((used)) static bool is_rate_legacy(s32 rate)
{
 static const s32 legacy[] = { 1000, 2000, 5500, 11000,
  6000, 9000, 12000, 18000, 24000,
  36000, 48000, 54000
 };
 u8 i;

 for (i = 0; i < ARRAY_SIZE(legacy); i++)
  if (rate == legacy[i])
   return 1;

 return 0;
}
