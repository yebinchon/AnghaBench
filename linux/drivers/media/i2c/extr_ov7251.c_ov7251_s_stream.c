
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ov7251 {int lock; int dev; int ctrls; TYPE_1__* current_mode; } ;
struct TYPE_2__ {int height; int width; int data_size; int data; } ;


 int OV7251_SC_MODE_SELECT ;
 int OV7251_SC_MODE_SELECT_STREAMING ;
 int OV7251_SC_MODE_SELECT_SW_STANDBY ;
 int __v4l2_ctrl_handler_setup (int *) ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov7251_set_register_array (struct ov7251*,int ,int ) ;
 int ov7251_write_reg (struct ov7251*,int ,int ) ;
 struct ov7251* to_ov7251 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7251_s_stream(struct v4l2_subdev *subdev, int enable)
{
 struct ov7251 *ov7251 = to_ov7251(subdev);
 int ret;

 mutex_lock(&ov7251->lock);

 if (enable) {
  ret = ov7251_set_register_array(ov7251,
     ov7251->current_mode->data,
     ov7251->current_mode->data_size);
  if (ret < 0) {
   dev_err(ov7251->dev, "could not set mode %dx%d\n",
    ov7251->current_mode->width,
    ov7251->current_mode->height);
   goto exit;
  }
  ret = __v4l2_ctrl_handler_setup(&ov7251->ctrls);
  if (ret < 0) {
   dev_err(ov7251->dev, "could not sync v4l2 controls\n");
   goto exit;
  }
  ret = ov7251_write_reg(ov7251, OV7251_SC_MODE_SELECT,
           OV7251_SC_MODE_SELECT_STREAMING);
 } else {
  ret = ov7251_write_reg(ov7251, OV7251_SC_MODE_SELECT,
           OV7251_SC_MODE_SELECT_SW_STANDBY);
 }

exit:
 mutex_unlock(&ov7251->lock);

 return ret;
}
