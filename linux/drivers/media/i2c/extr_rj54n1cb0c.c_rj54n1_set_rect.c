
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int reg_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static int rj54n1_set_rect(struct i2c_client *client,
      u16 reg_x, u16 reg_y, u16 reg_xy,
      u32 width, u32 height)
{
 int ret;

 ret = reg_write(client, reg_xy,
   ((width >> 4) & 0x70) |
   ((height >> 8) & 7));

 if (!ret)
  ret = reg_write(client, reg_x, width & 0xff);
 if (!ret)
  ret = reg_write(client, reg_y, height & 0xff);

 return ret;
}
