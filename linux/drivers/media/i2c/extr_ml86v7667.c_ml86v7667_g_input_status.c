
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int STATUS_HLOCK_DETECT ;
 int STATUS_REG ;
 int V4L2_IN_ST_NO_SIGNAL ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ml86v7667_g_input_status(struct v4l2_subdev *sd, u32 *status)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int status_reg;

 status_reg = i2c_smbus_read_byte_data(client, STATUS_REG);
 if (status_reg < 0)
  return status_reg;

 *status = status_reg & STATUS_HLOCK_DETECT ? 0 : V4L2_IN_ST_NO_SIGNAL;

 return 0;
}
