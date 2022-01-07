
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct v4l2_subdev {int dummy; } ;


 int io_write (struct v4l2_subdev*,scalar_t__,int) ;

__attribute__((used)) static int io_write24(struct v4l2_subdev *sd, u16 reg, u32 val)
{
 int ret;

 ret = io_write(sd, reg, (val >> 16) & 0xff);
 if (ret < 0)
  return ret;
 ret = io_write(sd, reg + 1, (val >> 8) & 0xff);
 if (ret < 0)
  return ret;
 ret = io_write(sd, reg + 2, val & 0xff);
 if (ret < 0)
  return ret;
 return 0;
}
