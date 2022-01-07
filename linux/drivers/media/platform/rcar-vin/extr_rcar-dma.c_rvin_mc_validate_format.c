
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int code; int field; int height; scalar_t__ width; } ;
struct v4l2_subdev_format {TYPE_2__ format; int pad; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ height; int field; } ;
struct rvin_dev {int mbus_code; TYPE_1__ format; } ;
struct media_pad {int index; } ;


 int EPIPE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 scalar_t__ v4l2_subdev_call (struct v4l2_subdev*,struct media_pad*,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int rvin_mc_validate_format(struct rvin_dev *vin, struct v4l2_subdev *sd,
       struct media_pad *pad)
{
 struct v4l2_subdev_format fmt = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };

 fmt.pad = pad->index;
 if (v4l2_subdev_call(sd, pad, get_fmt, ((void*)0), &fmt))
  return -EPIPE;

 switch (fmt.format.code) {
 case 137:
 case 139:
 case 138:
 case 140:
 case 141:
  vin->mbus_code = fmt.format.code;
  break;
 default:
  return -EPIPE;
 }

 switch (fmt.format.field) {
 case 128:
 case 135:
 case 131:
 case 132:
 case 133:
 case 134:
 case 129:
 case 130:

  break;
 case 136:
  switch (vin->format.field) {
  case 128:
  case 135:
  case 131:
   break;
  case 132:
  case 133:
  case 134:
  case 129:
  case 130:

   fmt.format.height *= 2;
   break;
  default:
   return -EPIPE;
  }
  break;
 default:
  return -EPIPE;
 }

 if (fmt.format.width != vin->format.width ||
     fmt.format.height != vin->format.height ||
     fmt.format.code != vin->mbus_code)
  return -EPIPE;

 return 0;
}
