
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct isp_format_info {scalar_t__ flavor; unsigned int width; } ;


 struct isp_format_info* omap3isp_video_format_info (scalar_t__) ;

__attribute__((used)) static bool ccdc_is_shiftable(u32 in, u32 out, unsigned int additional_shift)
{
 const struct isp_format_info *in_info, *out_info;

 if (in == out)
  return 1;

 in_info = omap3isp_video_format_info(in);
 out_info = omap3isp_video_format_info(out);

 if ((in_info->flavor == 0) || (out_info->flavor == 0))
  return 0;

 if (in_info->flavor != out_info->flavor)
  return 0;

 return in_info->width - out_info->width + additional_shift <= 6;
}
