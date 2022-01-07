
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_fwht_pixfmt_info {scalar_t__ id; } ;


 unsigned int ARRAY_SIZE (struct v4l2_fwht_pixfmt_info const*) ;
 struct v4l2_fwht_pixfmt_info const* v4l2_fwht_pixfmts ;

const struct v4l2_fwht_pixfmt_info *v4l2_fwht_find_pixfmt(u32 pixelformat)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(v4l2_fwht_pixfmts); i++)
  if (v4l2_fwht_pixfmts[i].id == pixelformat)
   return v4l2_fwht_pixfmts + i;
 return ((void*)0);
}
