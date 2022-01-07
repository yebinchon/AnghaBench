
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ALIGN (int,int) ;
 int SZ_4K ;
 int to_hfi_raw_fmt (int) ;
 int venus_helper_get_framesz_raw (int,int,int) ;

u32 venus_helper_get_framesz(u32 v4l2_fmt, u32 width, u32 height)
{
 u32 hfi_fmt, sz;
 bool compressed;

 switch (v4l2_fmt) {
 case 136:
 case 140:
 case 138:
 case 139:
 case 141:
 case 135:
 case 134:
 case 133:
 case 128:
 case 132:
 case 131:
 case 130:
 case 129:
 case 137:
  compressed = 1;
  break;
 default:
  compressed = 0;
  break;
 }

 if (compressed) {
  sz = ALIGN(height, 32) * ALIGN(width, 32) * 3 / 2 / 2;
  return ALIGN(sz, SZ_4K);
 }

 hfi_fmt = to_hfi_raw_fmt(v4l2_fmt);
 if (!hfi_fmt)
  return 0;

 return venus_helper_get_framesz_raw(hfi_fmt, width, height);
}
