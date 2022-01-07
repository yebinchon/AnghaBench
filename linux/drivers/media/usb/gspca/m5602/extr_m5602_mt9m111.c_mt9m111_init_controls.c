
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct TYPE_3__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct TYPE_4__ {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;
struct sd {void* hflip; void* auto_white_bal; void* vflip; void* blue_bal; void* red_bal; int green_bal; TYPE_2__ gspca_dev; } ;


 int INITIAL_MAX_GAIN ;
 int MT9M111_BLUE_GAIN_DEFAULT ;
 int MT9M111_DEFAULT_GAIN ;
 int MT9M111_RED_GAIN_DEFAULT ;
 int V4L2_CID_AUTO_WHITE_BALANCE ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_VFLIP ;
 int mt9m111_ctrl_ops ;
 int mt9m111_greenbal_cfg ;
 int pr_err (char*) ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_custom (struct v4l2_ctrl_handler*,int *,int *) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int ) ;

int mt9m111_init_controls(struct sd *sd)
{
 struct v4l2_ctrl_handler *hdl = &sd->gspca_dev.ctrl_handler;

 sd->gspca_dev.vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 7);

 sd->auto_white_bal = v4l2_ctrl_new_std(hdl, &mt9m111_ctrl_ops,
            V4L2_CID_AUTO_WHITE_BALANCE,
            0, 1, 1, 0);
 sd->green_bal = v4l2_ctrl_new_custom(hdl, &mt9m111_greenbal_cfg, ((void*)0));
 sd->red_bal = v4l2_ctrl_new_std(hdl, &mt9m111_ctrl_ops,
     V4L2_CID_RED_BALANCE, 0, 0x7ff, 1,
     MT9M111_RED_GAIN_DEFAULT);
 sd->blue_bal = v4l2_ctrl_new_std(hdl, &mt9m111_ctrl_ops,
     V4L2_CID_BLUE_BALANCE, 0, 0x7ff, 1,
     MT9M111_BLUE_GAIN_DEFAULT);

 v4l2_ctrl_new_std(hdl, &mt9m111_ctrl_ops, V4L2_CID_GAIN, 0,
     (INITIAL_MAX_GAIN - 1) * 2 * 2 * 2, 1,
     MT9M111_DEFAULT_GAIN);

 sd->hflip = v4l2_ctrl_new_std(hdl, &mt9m111_ctrl_ops, V4L2_CID_HFLIP,
          0, 1, 1, 0);
 sd->vflip = v4l2_ctrl_new_std(hdl, &mt9m111_ctrl_ops, V4L2_CID_VFLIP,
          0, 1, 1, 0);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }

 v4l2_ctrl_auto_cluster(4, &sd->auto_white_bal, 0, 0);
 v4l2_ctrl_cluster(2, &sd->hflip);

 return 0;
}
