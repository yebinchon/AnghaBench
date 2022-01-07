
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct camera_data {int usb_alt; scalar_t__ streaming; int mmapped; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int DBG (char*,scalar_t__) ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int cpia2_usb_stream_stop (struct camera_data*) ;
 int v4l2_ctrl_grab (int ,int) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_streamoff(struct file *file, void *fh, enum v4l2_buf_type type)
{
 struct camera_data *cam = video_drvdata(file);
 int ret = -EINVAL;

 DBG("VIDIOC_STREAMOFF, streaming=%d\n", cam->streaming);
 if (!cam->mmapped || type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 if (cam->streaming) {
  ret = cpia2_usb_stream_stop(cam);
  if (!ret)
   v4l2_ctrl_grab(cam->usb_alt, 0);
 }
 return ret;
}
