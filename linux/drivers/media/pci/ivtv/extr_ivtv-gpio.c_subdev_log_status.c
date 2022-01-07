
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct ivtv {int hdl_gpio; } ;


 int IVTV_INFO (char*,int ,int ,int ) ;
 int IVTV_REG_GPIO_DIR ;
 int IVTV_REG_GPIO_IN ;
 int IVTV_REG_GPIO_OUT ;
 int read_reg (int ) ;
 struct ivtv* sd_to_ivtv (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;

__attribute__((used)) static int subdev_log_status(struct v4l2_subdev *sd)
{
 struct ivtv *itv = sd_to_ivtv(sd);

 IVTV_INFO("GPIO status: DIR=0x%04x OUT=0x%04x IN=0x%04x\n",
   read_reg(IVTV_REG_GPIO_DIR), read_reg(IVTV_REG_GPIO_OUT),
   read_reg(IVTV_REG_GPIO_IN));
 v4l2_ctrl_handler_log_status(&itv->hdl_gpio, sd->name);
 return 0;
}
