
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_fh {int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct TYPE_4__ {int code; } ;
struct TYPE_3__ {int height; int width; } ;


 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 TYPE_2__* noon010_formats ;
 TYPE_1__* noon010_sizes ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int noon010_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
 struct v4l2_mbus_framefmt *mf = v4l2_subdev_get_try_format(sd, fh->pad, 0);

 mf->width = noon010_sizes[0].width;
 mf->height = noon010_sizes[0].height;
 mf->code = noon010_formats[0].code;
 mf->colorspace = V4L2_COLORSPACE_JPEG;
 mf->field = V4L2_FIELD_NONE;
 return 0;
}
