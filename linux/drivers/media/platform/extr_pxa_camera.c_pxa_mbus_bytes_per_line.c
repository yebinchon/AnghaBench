
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pxa_mbus_pixelfmt {scalar_t__ layout; int bits_per_sample; int packing; } ;
typedef int s32 ;


 int EINVAL ;
 scalar_t__ PXA_MBUS_LAYOUT_PACKED ;




__attribute__((used)) static s32 pxa_mbus_bytes_per_line(u32 width, const struct pxa_mbus_pixelfmt *mf)
{
 if (mf->layout != PXA_MBUS_LAYOUT_PACKED)
  return width * mf->bits_per_sample / 8;

 switch (mf->packing) {
 case 128:
  return width * mf->bits_per_sample / 8;
 case 130:
 case 129:
  return width * 2;
 }
 return -EINVAL;
}
