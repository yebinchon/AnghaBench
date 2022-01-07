
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;


 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int adv7175_read (struct v4l2_subdev*,int) ;
 int adv7175_write (struct v4l2_subdev*,int,int) ;
 int debug ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int adv7175_set_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 u8 val = adv7175_read(sd, 0x7);
 int ret = 0;

 if (format->pad)
  return -EINVAL;

 switch (mf->code) {
 case 128:
  val &= ~0x40;
  break;

 case 129:
  val |= 0x40;
  break;

 default:
  v4l2_dbg(1, debug, sd,
   "illegal v4l2_mbus_framefmt code: %d\n", mf->code);
  return -EINVAL;
 }

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE)
  ret = adv7175_write(sd, 0x7, val);

 return ret;
}
