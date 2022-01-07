
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct tw68_dev {TYPE_1__ v4l2_dev; struct v4l2_ctrl_handler hdl; } ;


 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CHROMA_AGC ;
 int V4L2_CID_COLOR_KILLER ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SATURATION ;
 int tw68_ctrl_ops ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;

int tw68_video_init1(struct tw68_dev *dev)
{
 struct v4l2_ctrl_handler *hdl = &dev->hdl;

 v4l2_ctrl_handler_init(hdl, 6);
 v4l2_ctrl_new_std(hdl, &tw68_ctrl_ops,
   V4L2_CID_BRIGHTNESS, -128, 127, 1, 20);
 v4l2_ctrl_new_std(hdl, &tw68_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 255, 1, 100);
 v4l2_ctrl_new_std(hdl, &tw68_ctrl_ops,
   V4L2_CID_SATURATION, 0, 255, 1, 128);

 v4l2_ctrl_new_std(hdl, &tw68_ctrl_ops,
   V4L2_CID_HUE, -128, 127, 1, 0);
 v4l2_ctrl_new_std(hdl, &tw68_ctrl_ops,
   V4L2_CID_COLOR_KILLER, 0, 1, 1, 0);
 v4l2_ctrl_new_std(hdl, &tw68_ctrl_ops,
   V4L2_CID_CHROMA_AGC, 0, 1, 1, 1);
 if (hdl->error) {
  v4l2_ctrl_handler_free(hdl);
  return hdl->error;
 }
 dev->v4l2_dev.ctrl_handler = hdl;
 v4l2_ctrl_handler_setup(hdl);
 return 0;
}
