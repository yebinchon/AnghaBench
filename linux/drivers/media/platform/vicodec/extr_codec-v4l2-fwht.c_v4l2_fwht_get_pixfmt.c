
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_fwht_pixfmt_info {int dummy; } ;


 scalar_t__ ARRAY_SIZE (struct v4l2_fwht_pixfmt_info const*) ;
 struct v4l2_fwht_pixfmt_info const* v4l2_fwht_pixfmts ;

const struct v4l2_fwht_pixfmt_info *v4l2_fwht_get_pixfmt(u32 idx)
{
 if (idx >= ARRAY_SIZE(v4l2_fwht_pixfmts))
  return ((void*)0);
 return v4l2_fwht_pixfmts + idx;
}
