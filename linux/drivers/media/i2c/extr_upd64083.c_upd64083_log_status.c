
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int i2c_master_recv (struct i2c_client*,int *,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int upd64083_log_status(struct v4l2_subdev *sd)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 u8 buf[7];

 i2c_master_recv(client, buf, 7);
 v4l2_info(sd, "Status: SA00=%02x SA01=%02x SA02=%02x SA03=%02x "
        "SA04=%02x SA05=%02x SA06=%02x\n",
  buf[0], buf[1], buf[2], buf[3], buf[4], buf[5], buf[6]);
 return 0;
}
