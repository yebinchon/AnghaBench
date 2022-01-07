
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; int width; } ;
struct ov9640_reg_alt {int member_0; } ;
struct i2c_client {int dummy; } ;


 int ov9640_alter_regs (int ,struct ov9640_reg_alt*) ;
 int ov9640_prog_dflt (struct i2c_client*) ;
 int ov9640_reset (struct i2c_client*) ;
 int ov9640_write_regs (struct i2c_client*,int ,int ,struct ov9640_reg_alt*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov9640_s_fmt(struct v4l2_subdev *sd,
   struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov9640_reg_alt alts = {0};
 int ret;

 ov9640_alter_regs(mf->code, &alts);

 ov9640_reset(client);

 ret = ov9640_prog_dflt(client);
 if (ret)
  return ret;

 return ov9640_write_regs(client, mf->width, mf->code, &alts);
}
