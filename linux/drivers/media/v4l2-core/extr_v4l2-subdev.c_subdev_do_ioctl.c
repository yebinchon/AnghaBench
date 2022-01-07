
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct video_device {int dummy; } ;
typedef void v4l2_subdev_selection ;
typedef void v4l2_subdev_mbus_code_enum ;
typedef void v4l2_subdev_frame_size_enum ;
typedef void v4l2_subdev_frame_interval_enum ;
struct v4l2_subdev_frame_interval {void* reserved; } ;
typedef void v4l2_subdev_format ;
struct v4l2_subdev_fh {unsigned int pad; } ;
struct v4l2_subdev_edid {int dummy; } ;
struct v4l2_subdev_crop {void* reserved; int rect; int pad; int which; } ;
struct v4l2_subdev {int flags; int name; TYPE_4__* ops; TYPE_1__* v4l2_dev; } ;
struct v4l2_standard {int dummy; } ;
struct v4l2_fh {int ctrl_handler; } ;
struct v4l2_enum_dv_timings {int dummy; } ;
struct v4l2_dv_timings_cap {int dummy; } ;
struct v4l2_dbg_register {int dummy; } ;
struct TYPE_7__ {int addr; int type; } ;
struct v4l2_dbg_chip_info {int name; int flags; TYPE_2__ match; } ;
struct file {int f_flags; struct v4l2_fh* private_data; } ;
typedef int sel ;
struct TYPE_10__ {void* reserved; } ;
struct TYPE_9__ {TYPE_3__* core; } ;
struct TYPE_8__ {int g_register; int s_register; } ;
struct TYPE_6__ {int mdev; } ;


 int CAP_SYS_ADMIN ;
 long EINVAL ;
 long ENOIOCTLCMD ;
 long ENOTTY ;
 long EPERM ;
 int O_NONBLOCK ;
 int V4L2_CHIP_FL_READABLE ;
 int V4L2_CHIP_FL_WRITABLE ;
 int V4L2_CHIP_MATCH_SUBDEV ;
 void* V4L2_SEL_TGT_CROP ;
 int V4L2_SUBDEV_FL_HAS_EVENTS ;
 int capable (int ) ;
 int core ;
 int dv_timings_cap ;
 int enum_dv_timings ;
 int enum_frame_interval ;
 int enum_frame_size ;
 int enum_mbus_code ;
 int g_dv_timings ;
 int g_frame_interval ;
 int g_register ;
 int g_std ;
 int g_tvnorms ;
 int get_edid ;
 int get_fmt ;
 int get_selection ;
 int ioctl ;
 int log_status ;
 int memset (void*,int ,int) ;
 int pad ;
 int pr_info (char*,int ) ;
 int query_dv_timings ;
 int querystd ;
 int s_dv_timings ;
 int s_frame_interval ;
 int s_register ;
 int s_std ;
 int set_edid ;
 int set_fmt ;
 int set_selection ;
 int strscpy (int ,int ,int) ;
 int subscribe_event ;
 struct v4l2_subdev_fh* to_v4l2_subdev_fh (struct v4l2_fh*) ;
 int unsubscribe_event ;
 long v4l2_event_dequeue (struct v4l2_fh*,void*,int) ;
 long v4l2_g_ctrl (int ,void*) ;
 long v4l2_g_ext_ctrls (int ,struct video_device*,int ,void*) ;
 long v4l2_query_ext_ctrl (int ,void*) ;
 long v4l2_queryctrl (int ,void*) ;
 long v4l2_querymenu (int ,void*) ;
 long v4l2_s_ctrl (struct v4l2_fh*,int ,void*) ;
 long v4l2_s_ext_ctrls (struct v4l2_fh*,int ,struct video_device*,int ,void*) ;
 long v4l2_subdev_call (struct v4l2_subdev*,int ,int ,...) ;
 long v4l2_try_ext_ctrls (int ,struct video_device*,int ,void*) ;
 long v4l_video_std_enumstd (struct v4l2_standard*,int ) ;
 struct v4l2_subdev* vdev_to_v4l2_subdev (struct video_device*) ;
 int video ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static long subdev_do_ioctl(struct file *file, unsigned int cmd, void *arg)
{
 struct video_device *vdev = video_devdata(file);
 struct v4l2_subdev *sd = vdev_to_v4l2_subdev(vdev);
 struct v4l2_fh *vfh = file->private_data;





 switch (cmd) {
 case 156:
  if (!vfh->ctrl_handler)
   return -ENOTTY;
  return v4l2_queryctrl(vfh->ctrl_handler, arg);

 case 154:
  if (!vfh->ctrl_handler)
   return -ENOTTY;
  return v4l2_query_ext_ctrl(vfh->ctrl_handler, arg);

 case 155:
  if (!vfh->ctrl_handler)
   return -ENOTTY;
  return v4l2_querymenu(vfh->ctrl_handler, arg);

 case 160:
  if (!vfh->ctrl_handler)
   return -ENOTTY;
  return v4l2_g_ctrl(vfh->ctrl_handler, arg);

 case 132:
  if (!vfh->ctrl_handler)
   return -ENOTTY;
  return v4l2_s_ctrl(vfh, vfh->ctrl_handler, arg);

 case 158:
  if (!vfh->ctrl_handler)
   return -ENOTTY;
  return v4l2_g_ext_ctrls(vfh->ctrl_handler,
     vdev, sd->v4l2_dev->mdev, arg);

 case 130:
  if (!vfh->ctrl_handler)
   return -ENOTTY;
  return v4l2_s_ext_ctrls(vfh, vfh->ctrl_handler,
     vdev, sd->v4l2_dev->mdev, arg);

 case 129:
  if (!vfh->ctrl_handler)
   return -ENOTTY;
  return v4l2_try_ext_ctrls(vfh->ctrl_handler,
       vdev, sd->v4l2_dev->mdev, arg);

 case 161:
  if (!(sd->flags & V4L2_SUBDEV_FL_HAS_EVENTS))
   return -ENOIOCTLCMD;

  return v4l2_event_dequeue(vfh, arg, file->f_flags & O_NONBLOCK);

 case 133:
  return v4l2_subdev_call(sd, core, subscribe_event, vfh, arg);

 case 128:
  return v4l2_subdev_call(sd, core, unsubscribe_event, vfh, arg);
 case 157: {
  int ret;

  pr_info("%s: =================  START STATUS  =================\n",
   sd->name);
  ret = v4l2_subdev_call(sd, core, log_status);
  pr_info("%s: ==================  END STATUS  ==================\n",
   sd->name);
  return ret;
 }
 default:
  return v4l2_subdev_call(sd, core, ioctl, cmd, arg);
 }

 return 0;
}
