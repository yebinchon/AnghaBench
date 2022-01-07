
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u16 ;
typedef enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;


 int ARRAY_SIZE (int const*) ;
 int B43_DMA_64BIT ;
 int B43_WARN_ON (int) ;

__attribute__((used)) static u16 b43_dmacontroller_base(enum b43_dmatype type, int controller_idx)
{
 static const u16 map64[] = {
  133,
  132,
  131,
  130,
  129,
  128,
 };
 static const u16 map32[] = {
  139,
  138,
  137,
  136,
  135,
  134,
 };

 if (type == B43_DMA_64BIT) {
  B43_WARN_ON(!(controller_idx >= 0 &&
         controller_idx < ARRAY_SIZE(map64)));
  return map64[controller_idx];
 }
 B43_WARN_ON(!(controller_idx >= 0 &&
        controller_idx < ARRAY_SIZE(map32)));
 return map32[controller_idx];
}
