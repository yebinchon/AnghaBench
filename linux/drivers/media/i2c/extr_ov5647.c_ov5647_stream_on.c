
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int MIPI_CTRL00_BUS_IDLE ;
 int OV5640_REG_PAD_OUT ;
 int OV5647_REG_FRAME_OFF_NUMBER ;
 int OV5647_REG_MIPI_CTRL00 ;
 int ov5647_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int ov5647_stream_on(struct v4l2_subdev *sd)
{
 int ret;

 ret = ov5647_write(sd, OV5647_REG_MIPI_CTRL00, MIPI_CTRL00_BUS_IDLE);
 if (ret < 0)
  return ret;

 ret = ov5647_write(sd, OV5647_REG_FRAME_OFF_NUMBER, 0x00);
 if (ret < 0)
  return ret;

 return ov5647_write(sd, OV5640_REG_PAD_OUT, 0x00);
}
