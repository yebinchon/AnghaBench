
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;


 int MEDIA_BUS_FMT_FIXED ;
 int S5K5BAF_CIS_HEIGHT ;
 int S5K5BAF_CIS_WIDTH ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;

__attribute__((used)) static void s5k5baf_try_cis_format(struct v4l2_mbus_framefmt *mf)
{
 mf->width = S5K5BAF_CIS_WIDTH;
 mf->height = S5K5BAF_CIS_HEIGHT;
 mf->code = MEDIA_BUS_FMT_FIXED;
 mf->colorspace = V4L2_COLORSPACE_JPEG;
 mf->field = V4L2_FIELD_NONE;
}
