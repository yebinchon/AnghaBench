
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int height; int width; int code; } ;
struct csis_pix_format {int pix_width_alignment; int code; } ;


 int CSIS_MAX_PIX_HEIGHT ;
 int CSIS_MAX_PIX_WIDTH ;
 struct csis_pix_format* find_csis_format (struct v4l2_mbus_framefmt*) ;
 struct csis_pix_format* s5pcsis_formats ;
 int v4l_bound_align_image (int *,int,int ,int ,int *,int,int ,int,int ) ;

__attribute__((used)) static struct csis_pix_format const *s5pcsis_try_format(
 struct v4l2_mbus_framefmt *mf)
{
 struct csis_pix_format const *csis_fmt;

 csis_fmt = find_csis_format(mf);
 if (csis_fmt == ((void*)0))
  csis_fmt = &s5pcsis_formats[0];

 mf->code = csis_fmt->code;
 v4l_bound_align_image(&mf->width, 1, CSIS_MAX_PIX_WIDTH,
         csis_fmt->pix_width_alignment,
         &mf->height, 1, CSIS_MAX_PIX_HEIGHT, 1,
         0);
 return csis_fmt;
}
