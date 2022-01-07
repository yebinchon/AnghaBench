
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {scalar_t__ code; } ;
struct csis_pix_format {scalar_t__ code; } ;


 int ARRAY_SIZE (struct csis_pix_format const*) ;
 struct csis_pix_format const* s5pcsis_formats ;

__attribute__((used)) static const struct csis_pix_format *find_csis_format(
 struct v4l2_mbus_framefmt *mf)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(s5pcsis_formats); i++)
  if (mf->code == s5pcsis_formats[i].code)
   return &s5pcsis_formats[i];
 return ((void*)0);
}
