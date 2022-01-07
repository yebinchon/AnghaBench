
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; } ;
struct isc_ctrls {int contrast; scalar_t__ brightness; int hist_stat; struct v4l2_ctrl_handler handler; } ;
struct isc_device {int do_wb_ctrl; struct isc_ctrls ctrls; } ;


 int GAMMA_MAX ;
 int HIST_INIT ;
 int V4L2_CID_AUTO_WHITE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_DO_WHITE_BALANCE ;
 int V4L2_CID_GAMMA ;
 struct v4l2_ctrl_ops isc_ctrl_ops ;
 int isc_reset_awb_ctrls (struct isc_device*) ;
 int v4l2_ctrl_activate (int ,int) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int,int,int,int) ;

__attribute__((used)) static int isc_ctrl_init(struct isc_device *isc)
{
 const struct v4l2_ctrl_ops *ops = &isc_ctrl_ops;
 struct isc_ctrls *ctrls = &isc->ctrls;
 struct v4l2_ctrl_handler *hdl = &ctrls->handler;
 int ret;

 ctrls->hist_stat = HIST_INIT;
 isc_reset_awb_ctrls(isc);

 ret = v4l2_ctrl_handler_init(hdl, 5);
 if (ret < 0)
  return ret;

 ctrls->brightness = 0;
 ctrls->contrast = 256;

 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_BRIGHTNESS, -1024, 1023, 1, 0);
 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_CONTRAST, -2048, 2047, 1, 256);
 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_GAMMA, 0, GAMMA_MAX, 1, 2);
 v4l2_ctrl_new_std(hdl, ops, V4L2_CID_AUTO_WHITE_BALANCE, 0, 1, 1, 1);


 isc->do_wb_ctrl = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_DO_WHITE_BALANCE,
         0, 0, 0, 0);

 if (!isc->do_wb_ctrl) {
  ret = hdl->error;
  v4l2_ctrl_handler_free(hdl);
  return ret;
 }

 v4l2_ctrl_activate(isc->do_wb_ctrl, 0);

 v4l2_ctrl_handler_setup(hdl);

 return 0;
}
