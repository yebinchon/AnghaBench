
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;




 int v4l2_err (struct v4l2_subdev*,char*,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int write_reg (struct i2c_client*,int,int) ;

__attribute__((used)) static int uda1342_s_routing(struct v4l2_subdev *sd,
  u32 input, u32 output, u32 config)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 switch (input) {
 case 129:
  write_reg(client, 0x00, 0x1241);
  break;
 case 128:
  write_reg(client, 0x00, 0x1441);
  break;
 default:
  v4l2_err(sd, "input %d not supported\n", input);
  break;
 }
 return 0;
}
