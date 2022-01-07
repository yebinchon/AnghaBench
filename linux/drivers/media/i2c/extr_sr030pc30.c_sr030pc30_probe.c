
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct sr030pc30_platform_data {int dummy; } ;
struct sr030pc30_info {int i2c_reg_page; int hflip; void* autoexp; void* awb; void* exp; void* blue; void* red; struct v4l2_ctrl_handler hdl; struct sr030pc30_platform_data* pdata; struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {struct sr030pc30_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int EIO ;
 int ENOMEM ;
 int EXPOS_MAX_MS ;
 int EXPOS_MIN_MS ;
 int GFP_KERNEL ;
 int V4L2_CID_AUTO_WHITE_BALANCE ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_EXPOSURE_MANUAL ;
 int dev_err (TYPE_1__*,char*) ;
 struct sr030pc30_info* devm_kzalloc (TYPE_1__*,int,int ) ;
 int sr030pc30_ctrl_ops ;
 int sr030pc30_detect (struct i2c_client*) ;
 int sr030pc30_ops ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;

__attribute__((used)) static int sr030pc30_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct sr030pc30_info *info;
 struct v4l2_subdev *sd;
 struct v4l2_ctrl_handler *hdl;
 const struct sr030pc30_platform_data *pdata
  = client->dev.platform_data;
 int ret;

 if (!pdata) {
  dev_err(&client->dev, "No platform data!");
  return -EIO;
 }

 ret = sr030pc30_detect(client);
 if (ret)
  return ret;

 info = devm_kzalloc(&client->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 sd = &info->sd;
 info->pdata = client->dev.platform_data;

 v4l2_i2c_subdev_init(sd, client, &sr030pc30_ops);

 hdl = &info->hdl;
 v4l2_ctrl_handler_init(hdl, 6);
 info->awb = v4l2_ctrl_new_std(hdl, &sr030pc30_ctrl_ops,
   V4L2_CID_AUTO_WHITE_BALANCE, 0, 1, 1, 1);
 info->red = v4l2_ctrl_new_std(hdl, &sr030pc30_ctrl_ops,
   V4L2_CID_RED_BALANCE, 0, 127, 1, 64);
 info->blue = v4l2_ctrl_new_std(hdl, &sr030pc30_ctrl_ops,
   V4L2_CID_BLUE_BALANCE, 0, 127, 1, 64);
 info->autoexp = v4l2_ctrl_new_std(hdl, &sr030pc30_ctrl_ops,
   V4L2_CID_EXPOSURE_AUTO, 0, 1, 1, 1);
 info->exp = v4l2_ctrl_new_std(hdl, &sr030pc30_ctrl_ops,
   V4L2_CID_EXPOSURE, EXPOS_MIN_MS, EXPOS_MAX_MS, 1, 30);
 sd->ctrl_handler = hdl;
 if (hdl->error) {
  int err = hdl->error;

  v4l2_ctrl_handler_free(hdl);
  return err;
 }
 v4l2_ctrl_auto_cluster(3, &info->awb, 0, 0);
 v4l2_ctrl_auto_cluster(2, &info->autoexp, V4L2_EXPOSURE_MANUAL, 0);
 v4l2_ctrl_handler_setup(hdl);

 info->i2c_reg_page = -1;
 info->hflip = 1;

 return 0;
}
