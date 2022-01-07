
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int OV5647_REG_MIPI_CTRL14 ;
 int ov5647_read (struct v4l2_subdev*,int ,int*) ;
 int ov5647_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int ov5647_set_virtual_channel(struct v4l2_subdev *sd, int channel)
{
 u8 channel_id;
 int ret;

 ret = ov5647_read(sd, OV5647_REG_MIPI_CTRL14, &channel_id);
 if (ret < 0)
  return ret;

 channel_id &= ~(3 << 6);
 return ov5647_write(sd, OV5647_REG_MIPI_CTRL14, channel_id | (channel << 6));
}
