
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct s5c73m3_frame_size {int height; int width; } ;


 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;

__attribute__((used)) static void s5c73m3_fill_mbus_fmt(struct v4l2_mbus_framefmt *mf,
      const struct s5c73m3_frame_size *fs,
      u32 code)
{
 mf->width = fs->width;
 mf->height = fs->height;
 mf->code = code;
 mf->colorspace = V4L2_COLORSPACE_JPEG;
 mf->field = V4L2_FIELD_NONE;
}
