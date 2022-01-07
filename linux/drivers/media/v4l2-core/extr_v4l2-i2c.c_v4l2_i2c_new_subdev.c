
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_device {int dummy; } ;
struct i2c_board_info {int addr; int type; } ;
struct i2c_adapter {int dummy; } ;
typedef int info ;


 int memset (struct i2c_board_info*,int ,int) ;
 int strscpy (int ,char const*,int) ;
 struct v4l2_subdev* v4l2_i2c_new_subdev_board (struct v4l2_device*,struct i2c_adapter*,struct i2c_board_info*,unsigned short const*) ;

struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *v4l2_dev,
     struct i2c_adapter *adapter,
     const char *client_type,
     u8 addr,
     const unsigned short *probe_addrs)
{
 struct i2c_board_info info;





 memset(&info, 0, sizeof(info));
 strscpy(info.type, client_type, sizeof(info.type));
 info.addr = addr;

 return v4l2_i2c_new_subdev_board(v4l2_dev, adapter, &info,
      probe_addrs);
}
