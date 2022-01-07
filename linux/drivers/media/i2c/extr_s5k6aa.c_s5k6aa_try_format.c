
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int field; int code; int colorspace; int height; int width; } ;
struct s5k6aa {int dummy; } ;
struct TYPE_2__ {int code; int colorspace; } ;


 int S5K6AA_WIN_HEIGHT_MAX ;
 int S5K6AA_WIN_HEIGHT_MIN ;
 int S5K6AA_WIN_WIDTH_MAX ;
 int S5K6AA_WIN_WIDTH_MIN ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_COLORSPACE_REC709 ;
 int V4L2_FIELD_NONE ;
 TYPE_1__* s5k6aa_formats ;
 unsigned int s5k6aa_get_pixfmt_index (struct s5k6aa*,struct v4l2_mbus_framefmt*) ;
 int v4l_bound_align_image (int *,int ,int ,int,int *,int ,int ,int,int ) ;

__attribute__((used)) static void s5k6aa_try_format(struct s5k6aa *s5k6aa,
         struct v4l2_mbus_framefmt *mf)
{
 unsigned int index;

 v4l_bound_align_image(&mf->width, S5K6AA_WIN_WIDTH_MIN,
         S5K6AA_WIN_WIDTH_MAX, 1,
         &mf->height, S5K6AA_WIN_HEIGHT_MIN,
         S5K6AA_WIN_HEIGHT_MAX, 1, 0);

 if (mf->colorspace != V4L2_COLORSPACE_JPEG &&
     mf->colorspace != V4L2_COLORSPACE_REC709)
  mf->colorspace = V4L2_COLORSPACE_JPEG;

 index = s5k6aa_get_pixfmt_index(s5k6aa, mf);

 mf->colorspace = s5k6aa_formats[index].colorspace;
 mf->code = s5k6aa_formats[index].code;
 mf->field = V4L2_FIELD_NONE;
}
