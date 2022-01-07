
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int gain; int exposure; scalar_t__ do_ctrl; } ;
struct TYPE_2__ {scalar_t__ bulk_nurbs; } ;
struct gspca_dev {int * urb; TYPE_1__ cam; } ;


 int GFP_KERNEL ;
 int msleep (int) ;
 int pr_err (char*,int) ;
 int setexposure (struct gspca_dev*,int ,int ) ;
 int usb_submit_urb (int ,int ) ;
 int v4l2_ctrl_g_ctrl (int ) ;

__attribute__((used)) static void sd_dq_callback(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret;

 if (!sd->do_ctrl || gspca_dev->cam.bulk_nurbs != 0)
  return;
 sd->do_ctrl = 0;

 setexposure(gspca_dev, v4l2_ctrl_g_ctrl(sd->exposure),
   v4l2_ctrl_g_ctrl(sd->gain));

 gspca_dev->cam.bulk_nurbs = 1;
 ret = usb_submit_urb(gspca_dev->urb[0], GFP_KERNEL);
 if (ret < 0)
  pr_err("sd_dq_callback() err %d\n", ret);


 msleep(100);
}
