
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_mbus_code_enum {int index; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_device {int dummy; } ;
struct pxa_camera_format_xlate {scalar_t__ code; } ;


 int ENOMEM ;
 int ENXIO ;
 struct pxa_camera_format_xlate* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_mbus_code ;
 struct pxa_camera_format_xlate* kcalloc (unsigned int,int,int ) ;
 int kfree (struct pxa_camera_format_xlate*) ;
 int pad ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_mbus_code_enum*) ;

__attribute__((used)) static struct pxa_camera_format_xlate *pxa_mbus_build_fmts_xlate(
 struct v4l2_device *v4l2_dev, struct v4l2_subdev *subdev,
 int (*get_formats)(struct v4l2_device *, unsigned int,
      struct pxa_camera_format_xlate *xlate))
{
 unsigned int i, fmts = 0, raw_fmts = 0;
 int ret;
 struct v4l2_subdev_mbus_code_enum code = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 struct pxa_camera_format_xlate *user_formats;

 while (!v4l2_subdev_call(subdev, pad, enum_mbus_code, ((void*)0), &code)) {
  raw_fmts++;
  code.index++;
 }





 for (i = 0; i < raw_fmts; i++) {
  ret = get_formats(v4l2_dev, i, ((void*)0));
  if (ret < 0)
   return ERR_PTR(ret);
  fmts += ret;
 }

 if (!fmts)
  return ERR_PTR(-ENXIO);

 user_formats = kcalloc(fmts + 1, sizeof(*user_formats), GFP_KERNEL);
 if (!user_formats)
  return ERR_PTR(-ENOMEM);


 fmts = 0;
 for (i = 0; i < raw_fmts; i++) {
  ret = get_formats(v4l2_dev, i, user_formats + fmts);
  if (ret < 0)
   goto egfmt;
  fmts += ret;
 }
 user_formats[fmts].code = 0;

 return user_formats;
egfmt:
 kfree(user_formats);
 return ERR_PTR(ret);
}
