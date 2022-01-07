
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int adapter; } ;


 scalar_t__ IS_ERR (struct i2c_client*) ;
 int PTR_ERR (struct i2c_client*) ;
 struct i2c_client* i2c_new_dummy_device (int ,int) ;
 int io_read (struct v4l2_subdev*,int) ;
 int io_write (struct v4l2_subdev*,int,int) ;
 int v4l2_err (struct v4l2_subdev*,char*,char const*,...) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static struct i2c_client *adv7842_dummy_client(struct v4l2_subdev *sd, const char *desc,
            u8 addr, u8 io_reg)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct i2c_client *cp;

 io_write(sd, io_reg, addr << 1);

 if (addr == 0) {
  v4l2_err(sd, "no %s i2c addr configured\n", desc);
  return ((void*)0);
 }

 cp = i2c_new_dummy_device(client->adapter, io_read(sd, io_reg) >> 1);
 if (IS_ERR(cp)) {
  v4l2_err(sd, "register %s on i2c addr 0x%x failed with %ld\n",
    desc, addr, PTR_ERR(cp));
  cp = ((void*)0);
 }

 return cp;
}
