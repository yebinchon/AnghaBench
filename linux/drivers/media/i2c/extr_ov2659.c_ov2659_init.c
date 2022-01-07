
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int ov2659_init_regs ;
 int ov2659_write_array (struct i2c_client*,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov2659_init(struct v4l2_subdev *sd, u32 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 return ov2659_write_array(client, ov2659_init_regs);
}
