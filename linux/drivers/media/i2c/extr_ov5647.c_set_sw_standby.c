
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int OV5647_SW_STANDBY ;
 int ov5647_read (struct v4l2_subdev*,int ,int*) ;
 int ov5647_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int set_sw_standby(struct v4l2_subdev *sd, bool standby)
{
 int ret;
 u8 rdval;

 ret = ov5647_read(sd, OV5647_SW_STANDBY, &rdval);
 if (ret < 0)
  return ret;

 if (standby)
  rdval &= ~0x01;
 else
  rdval |= 0x01;

 return ov5647_write(sd, OV5647_SW_STANDBY, rdval);
}
