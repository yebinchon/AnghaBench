
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct v4l2_subdev_mbus_code_enum {int code; int index; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct isc_format {int sd_support; } ;
struct isc_device {unsigned int num_user_formats; struct isc_format** user_formats; int dev; int v4l2_dev; TYPE_1__* current_subdev; } ;
struct TYPE_2__ {struct v4l2_subdev* sd; } ;


 unsigned int ARRAY_SIZE (struct isc_format*) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 struct isc_format** devm_kcalloc (int ,unsigned int,int,int ) ;
 int enum_mbus_code ;
 struct isc_format* find_format_by_code (int ,unsigned int*) ;
 struct isc_format* formats_list ;
 int pad ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_mbus_code_enum*) ;
 int v4l2_warn (int *,char*,int ) ;

__attribute__((used)) static int isc_formats_init(struct isc_device *isc)
{
 struct isc_format *fmt;
 struct v4l2_subdev *subdev = isc->current_subdev->sd;
 unsigned int num_fmts, i, j;
 u32 list_size = ARRAY_SIZE(formats_list);
 struct v4l2_subdev_mbus_code_enum mbus_code = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };

 num_fmts = 0;
 while (!v4l2_subdev_call(subdev, pad, enum_mbus_code,
        ((void*)0), &mbus_code)) {
  mbus_code.index++;

  fmt = find_format_by_code(mbus_code.code, &i);
  if (!fmt) {
   v4l2_warn(&isc->v4l2_dev, "Mbus code %x not supported\n",
      mbus_code.code);
   continue;
  }

  fmt->sd_support = 1;
  num_fmts++;
 }

 if (!num_fmts)
  return -ENXIO;

 isc->num_user_formats = num_fmts;
 isc->user_formats = devm_kcalloc(isc->dev,
      num_fmts, sizeof(*isc->user_formats),
      GFP_KERNEL);
 if (!isc->user_formats)
  return -ENOMEM;

 fmt = &formats_list[0];
 for (i = 0, j = 0; i < list_size; i++) {
  if (fmt->sd_support)
   isc->user_formats[j++] = fmt;
  fmt++;
 }

 return 0;
}
