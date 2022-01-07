
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_mbus_code_enum {unsigned int index; int code; int which; } ;
struct v4l2_device {int dummy; } ;
struct pxa_mbus_pixelfmt {int name; int bits_per_sample; } ;
struct pxa_camera_format_xlate {int code; struct pxa_mbus_pixelfmt const* host_fmt; } ;
struct pxa_camera_dev {int dummy; } ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int dev_dbg (int ,char*,int ,...) ;
 int dev_err (int ,char*,unsigned int,int) ;
 int enum_mbus_code ;
 int pad ;
 int pcdev_to_dev (struct pxa_camera_dev*) ;
 struct pxa_mbus_pixelfmt const* pxa_camera_formats ;
 int pxa_camera_packing_supported (struct pxa_mbus_pixelfmt const*) ;
 int pxa_camera_try_bus_param (struct pxa_camera_dev*,int ) ;
 struct pxa_mbus_pixelfmt* pxa_mbus_get_fmtdesc (int) ;
 int sensor_call (struct pxa_camera_dev*,int ,int ,int *,struct v4l2_subdev_mbus_code_enum*) ;
 struct pxa_camera_dev* v4l2_dev_to_pcdev (struct v4l2_device*) ;

__attribute__((used)) static int pxa_camera_get_formats(struct v4l2_device *v4l2_dev,
      unsigned int idx,
      struct pxa_camera_format_xlate *xlate)
{
 struct pxa_camera_dev *pcdev = v4l2_dev_to_pcdev(v4l2_dev);
 int formats = 0, ret;
 struct v4l2_subdev_mbus_code_enum code = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .index = idx,
 };
 const struct pxa_mbus_pixelfmt *fmt;

 ret = sensor_call(pcdev, pad, enum_mbus_code, ((void*)0), &code);
 if (ret < 0)

  return 0;

 fmt = pxa_mbus_get_fmtdesc(code.code);
 if (!fmt) {
  dev_err(pcdev_to_dev(pcdev),
   "Invalid format code #%u: %d\n", idx, code.code);
  return 0;
 }


 ret = pxa_camera_try_bus_param(pcdev, fmt->bits_per_sample);
 if (ret < 0)
  return 0;

 switch (code.code) {
 case 131:
  formats++;
  if (xlate) {
   xlate->host_fmt = &pxa_camera_formats[0];
   xlate->code = code.code;
   xlate++;
   dev_dbg(pcdev_to_dev(pcdev),
    "Providing format %s using code %d\n",
    pxa_camera_formats[0].name, code.code);
  }

 case 130:
 case 129:
 case 128:
 case 132:
 case 133:
  if (xlate)
   dev_dbg(pcdev_to_dev(pcdev),
    "Providing format %s packed\n",
    fmt->name);
  break;
 default:
  if (!pxa_camera_packing_supported(fmt))
   return 0;
  if (xlate)
   dev_dbg(pcdev_to_dev(pcdev),
    "Providing format %s in pass-through mode\n",
    fmt->name);
  break;
 }


 formats++;
 if (xlate) {
  xlate->host_fmt = fmt;
  xlate->code = code.code;
  xlate++;
 }

 return formats;
}
