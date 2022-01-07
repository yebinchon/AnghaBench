
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ENODEV ;
 int REG_FW_REVISION ;
 int REG_FW_VERSION ;
 scalar_t__ S5K4ECGX_FW_VERSION ;
 int s5k4ecgx_read (struct i2c_client*,int ,scalar_t__*) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int s5k4ecgx_read_fw_ver(struct v4l2_subdev *sd)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 u16 hw_rev, fw_ver = 0;
 int ret;

 ret = s5k4ecgx_read(client, REG_FW_VERSION, &fw_ver);
 if (ret < 0 || fw_ver != S5K4ECGX_FW_VERSION) {
  v4l2_err(sd, "FW version check failed!\n");
  return -ENODEV;
 }

 ret = s5k4ecgx_read(client, REG_FW_REVISION, &hw_rev);
 if (ret < 0)
  return ret;

 v4l2_info(sd, "chip found FW ver: 0x%x, HW rev: 0x%x\n",
      fw_ver, hw_rev);
 return 0;
}
