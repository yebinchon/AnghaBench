
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int msleep (int) ;
 int s5k4ecgx_load_firmware (struct v4l2_subdev*) ;
 int s5k4ecgx_set_ahb_address (struct v4l2_subdev*) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int s5k4ecgx_init_sensor(struct v4l2_subdev *sd)
{
 int ret;

 ret = s5k4ecgx_set_ahb_address(sd);


 msleep(100);

 if (!ret)
  ret = s5k4ecgx_load_firmware(sd);
 if (ret)
  v4l2_err(sd, "Failed to write initial settings\n");

 return ret;
}
