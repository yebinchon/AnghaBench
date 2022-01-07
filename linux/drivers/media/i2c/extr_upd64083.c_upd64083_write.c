
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int debug ;
 int i2c_master_send (struct i2c_client*,int *,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ) ;
 int v4l2_err (struct v4l2_subdev*,char*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static void upd64083_write(struct v4l2_subdev *sd, u8 reg, u8 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 u8 buf[2];

 buf[0] = reg;
 buf[1] = val;
 v4l2_dbg(1, debug, sd, "write reg: %02x val: %02x\n", reg, val);
 if (i2c_master_send(client, buf, 2) != 2)
  v4l2_err(sd, "I/O error write 0x%02x/0x%02x\n", reg, val);
}
