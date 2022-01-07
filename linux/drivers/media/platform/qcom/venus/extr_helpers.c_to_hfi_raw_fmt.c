
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HFI_COLOR_FORMAT_NV12 ;
 int HFI_COLOR_FORMAT_NV21 ;



__attribute__((used)) static u32 to_hfi_raw_fmt(u32 v4l2_fmt)
{
 switch (v4l2_fmt) {
 case 129:
  return HFI_COLOR_FORMAT_NV12;
 case 128:
  return HFI_COLOR_FORMAT_NV21;
 default:
  break;
 }

 return 0;
}
