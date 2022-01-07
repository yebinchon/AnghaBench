
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int field; int code; int colorspace; int height; int width; } ;
struct TYPE_2__ {int code; int colorspace; } ;


 int S5K5BAF_CIS_HEIGHT ;
 int S5K5BAF_CIS_WIDTH ;
 int S5K5BAF_WIN_HEIGHT_MIN ;
 int S5K5BAF_WIN_WIDTH_MIN ;
 int V4L2_FIELD_NONE ;
 int s5k5baf_find_pixfmt (struct v4l2_mbus_framefmt*) ;
 TYPE_1__* s5k5baf_formats ;
 int v4l_bound_align_image (int *,int ,int ,int,int *,int ,int ,int,int ) ;

__attribute__((used)) static int s5k5baf_try_isp_format(struct v4l2_mbus_framefmt *mf)
{
 int pixfmt;

 v4l_bound_align_image(&mf->width, S5K5BAF_WIN_WIDTH_MIN,
         S5K5BAF_CIS_WIDTH, 1,
         &mf->height, S5K5BAF_WIN_HEIGHT_MIN,
         S5K5BAF_CIS_HEIGHT, 1, 0);

 pixfmt = s5k5baf_find_pixfmt(mf);

 mf->colorspace = s5k5baf_formats[pixfmt].colorspace;
 mf->code = s5k5baf_formats[pixfmt].code;
 mf->field = V4L2_FIELD_NONE;

 return pixfmt;
}
