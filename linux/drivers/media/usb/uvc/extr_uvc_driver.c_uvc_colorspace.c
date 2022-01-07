
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t const u32 ;


 size_t const ARRAY_SIZE (size_t const*) ;






__attribute__((used)) static u32 uvc_colorspace(const u8 primaries)
{
 static const u8 colorprimaries[] = {
  0,
  128,
  131,
  132,
  130,
  129,
 };

 if (primaries < ARRAY_SIZE(colorprimaries))
  return colorprimaries[primaries];

 return 0;
}
