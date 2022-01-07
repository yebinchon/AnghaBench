
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;


 int io_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static int io_write16(struct v4l2_subdev *sd, u16 reg, u16 val)
{
 int ret;

 ret = io_write(sd, reg, (val >> 8) & 0xff);
 if (ret < 0)
  return ret;
 ret = io_write(sd, reg + 1, val & 0xff);
 if (ret < 0)
  return ret;
 return 0;
}
