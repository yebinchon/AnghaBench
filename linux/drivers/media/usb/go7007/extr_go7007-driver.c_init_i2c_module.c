
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_device {int dummy; } ;
struct i2c_board_info {int flags; int addr; int type; } ;
struct i2c_adapter {int dummy; } ;
struct go_i2c {int type; scalar_t__ is_audio; scalar_t__ is_video; int flags; int addr; } ;
struct go7007 {struct v4l2_subdev* sd_audio; struct v4l2_subdev* sd_video; struct v4l2_device v4l2_dev; } ;
typedef int info ;


 int EINVAL ;
 struct go7007* i2c_get_adapdata (struct i2c_adapter*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int pr_info (char*,int ) ;
 int strscpy (int ,int ,int) ;
 struct v4l2_subdev* v4l2_i2c_new_subdev_board (struct v4l2_device*,struct i2c_adapter*,struct i2c_board_info*,int *) ;

__attribute__((used)) static int init_i2c_module(struct i2c_adapter *adapter, const struct go_i2c *const i2c)
{
 struct go7007 *go = i2c_get_adapdata(adapter);
 struct v4l2_device *v4l2_dev = &go->v4l2_dev;
 struct v4l2_subdev *sd;
 struct i2c_board_info info;

 memset(&info, 0, sizeof(info));
 strscpy(info.type, i2c->type, sizeof(info.type));
 info.addr = i2c->addr;
 info.flags = i2c->flags;

 sd = v4l2_i2c_new_subdev_board(v4l2_dev, adapter, &info, ((void*)0));
 if (sd) {
  if (i2c->is_video)
   go->sd_video = sd;
  if (i2c->is_audio)
   go->sd_audio = sd;
  return 0;
 }

 pr_info("go7007: probing for module i2c:%s failed\n", i2c->type);
 return -EINVAL;
}
