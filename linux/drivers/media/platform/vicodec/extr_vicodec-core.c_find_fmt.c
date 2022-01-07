
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_fwht_pixfmt_info {int dummy; } ;


 struct v4l2_fwht_pixfmt_info* v4l2_fwht_find_pixfmt (int ) ;
 struct v4l2_fwht_pixfmt_info* v4l2_fwht_get_pixfmt (int ) ;

__attribute__((used)) static const struct v4l2_fwht_pixfmt_info *find_fmt(u32 fmt)
{
 const struct v4l2_fwht_pixfmt_info *info =
  v4l2_fwht_find_pixfmt(fmt);

 if (!info)
  info = v4l2_fwht_get_pixfmt(0);
 return info;
}
