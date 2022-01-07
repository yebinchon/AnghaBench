
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_3__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_subdev_selection {int target; TYPE_2__ format; int which; void* pad; TYPE_1__ r; } ;
struct v4l2_subdev_format {int target; TYPE_2__ format; int which; void* pad; TYPE_1__ r; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_selection {int target; TYPE_1__ r; } ;
struct isp_video {int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOIOCTLCMD ;
 int ENOTTY ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;






 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 int get_selection ;
 struct v4l2_subdev* isp_video_remote_subdev (struct isp_video*,void**) ;
 int v4l2_subdev_call (struct v4l2_subdev*,void*,int ,int *,struct v4l2_subdev_selection*) ;
 struct isp_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
isp_video_get_selection(struct file *file, void *fh, struct v4l2_selection *sel)
{
 struct isp_video *video = video_drvdata(file);
 struct v4l2_subdev_format format;
 struct v4l2_subdev *subdev;
 struct v4l2_subdev_selection sdsel = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .target = sel->target,
 };
 u32 pad;
 int ret;

 switch (sel->target) {
 case 130:
 case 129:
 case 128:
  if (video->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  break;
 case 133:
 case 132:
 case 131:
  if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }
 subdev = isp_video_remote_subdev(video, &pad);
 if (subdev == ((void*)0))
  return -EINVAL;




 sdsel.pad = pad;
 ret = v4l2_subdev_call(subdev, pad, get_selection, ((void*)0), &sdsel);
 if (!ret)
  sel->r = sdsel.r;
 if (ret != -ENOIOCTLCMD)
  return ret;

 format.pad = pad;
 format.which = V4L2_SUBDEV_FORMAT_ACTIVE;
 ret = v4l2_subdev_call(subdev, pad, get_fmt, ((void*)0), &format);
 if (ret < 0)
  return ret == -ENOIOCTLCMD ? -ENOTTY : ret;

 sel->r.left = 0;
 sel->r.top = 0;
 sel->r.width = format.format.width;
 sel->r.height = format.format.height;

 return 0;
}
