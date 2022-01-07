
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;





 int get_framesize_raw_nv12 (int,int) ;
 int get_framesize_raw_nv12_ubwc (int,int) ;

u32 venus_helper_get_framesz_raw(u32 hfi_fmt, u32 width, u32 height)
{
 switch (hfi_fmt) {
 case 130:
 case 128:
  return get_framesize_raw_nv12(width, height);
 case 129:
  return get_framesize_raw_nv12_ubwc(width, height);
 default:
  return 0;
 }
}
