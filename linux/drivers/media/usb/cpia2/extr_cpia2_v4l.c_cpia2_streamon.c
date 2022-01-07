
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_3__ {int stream_mode; } ;
struct TYPE_4__ {TYPE_1__ camera_state; } ;
struct camera_data {int usb_alt; TYPE_2__ params; int streaming; int mmapped; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int DBG (char*,int ) ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int cpia2_usb_stream_start (struct camera_data*,int ) ;
 int v4l2_ctrl_grab (int ,int) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_streamon(struct file *file, void *fh, enum v4l2_buf_type type)
{
 struct camera_data *cam = video_drvdata(file);
 int ret = -EINVAL;

 DBG("VIDIOC_STREAMON, streaming=%d\n", cam->streaming);
 if (!cam->mmapped || type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 if (!cam->streaming) {
  ret = cpia2_usb_stream_start(cam,
    cam->params.camera_state.stream_mode);
  if (!ret)
   v4l2_ctrl_grab(cam->usb_alt, 1);
 }
 return ret;
}
