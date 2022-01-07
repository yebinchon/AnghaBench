
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v4l2_subdev_mbus_code_enum {int pad; int code; scalar_t__ index; int which; } ;
struct v4l2_subdev {int ctrl_handler; int name; } ;
struct TYPE_11__ {int error; } ;
struct TYPE_9__ {TYPE_4__* ctrl_handler; int tvnorms; } ;
struct rvin_dev {int mbus_code; TYPE_3__* parallel; TYPE_4__ ctrl_handler; TYPE_2__ vdev; int std; TYPE_1__* info; } ;
struct TYPE_10__ {int source_pad; int sink_pad; struct v4l2_subdev* subdev; } ;
struct TYPE_8__ {scalar_t__ use_mc; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOIOCTLCMD ;





 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int V4L2_CID_ALPHA_COMPONENT ;
 int V4L2_STD_UNKNOWN ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_mbus_code ;
 int g_std ;
 int g_tvnorms ;
 int pad ;
 int rvin_ctrl_ops ;
 int rvin_find_pad (struct v4l2_subdev*,int ) ;
 int v4l2_ctrl_add_handler (TYPE_4__*,int ,int *,int) ;
 int v4l2_ctrl_handler_free (TYPE_4__*) ;
 int v4l2_ctrl_handler_init (TYPE_4__*,int) ;
 int v4l2_ctrl_new_std (TYPE_4__*,int *,int ,int ,int,int,int) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,...) ;
 int video ;
 int vin_dbg (struct rvin_dev*,char*,int ,int) ;
 int vin_err (struct rvin_dev*,char*,int ) ;

__attribute__((used)) static int rvin_parallel_subdevice_attach(struct rvin_dev *vin,
       struct v4l2_subdev *subdev)
{
 struct v4l2_subdev_mbus_code_enum code = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;


 ret = rvin_find_pad(subdev, MEDIA_PAD_FL_SOURCE);
 if (ret < 0)
  return ret;
 vin->parallel->source_pad = ret;

 ret = rvin_find_pad(subdev, MEDIA_PAD_FL_SINK);
 vin->parallel->sink_pad = ret < 0 ? 0 : ret;

 if (vin->info->use_mc) {
  vin->parallel->subdev = subdev;
  return 0;
 }


 vin->mbus_code = 0;
 code.index = 0;
 code.pad = vin->parallel->source_pad;
 while (!vin->mbus_code &&
        !v4l2_subdev_call(subdev, pad, enum_mbus_code, ((void*)0), &code)) {
  code.index++;
  switch (code.code) {
  case 128:
  case 130:
  case 129:
  case 131:
  case 132:
   vin->mbus_code = code.code;
   vin_dbg(vin, "Found media bus format for %s: %d\n",
    subdev->name, vin->mbus_code);
   break;
  default:
   break;
  }
 }

 if (!vin->mbus_code) {
  vin_err(vin, "Unsupported media bus format for %s\n",
   subdev->name);
  return -EINVAL;
 }


 ret = v4l2_subdev_call(subdev, video, g_tvnorms, &vin->vdev.tvnorms);
 if (ret < 0 && ret != -ENOIOCTLCMD && ret != -ENODEV)
  return ret;


 vin->std = V4L2_STD_UNKNOWN;
 ret = v4l2_subdev_call(subdev, video, g_std, &vin->std);
 if (ret < 0 && ret != -ENOIOCTLCMD)
  return ret;


 ret = v4l2_ctrl_handler_init(&vin->ctrl_handler, 16);
 if (ret < 0)
  return ret;

 v4l2_ctrl_new_std(&vin->ctrl_handler, &rvin_ctrl_ops,
     V4L2_CID_ALPHA_COMPONENT, 0, 255, 1, 255);

 if (vin->ctrl_handler.error) {
  ret = vin->ctrl_handler.error;
  v4l2_ctrl_handler_free(&vin->ctrl_handler);
  return ret;
 }

 ret = v4l2_ctrl_add_handler(&vin->ctrl_handler, subdev->ctrl_handler,
        ((void*)0), 1);
 if (ret < 0) {
  v4l2_ctrl_handler_free(&vin->ctrl_handler);
  return ret;
 }

 vin->vdev.ctrl_handler = &vin->ctrl_handler;

 vin->parallel->subdev = subdev;

 return 0;
}
