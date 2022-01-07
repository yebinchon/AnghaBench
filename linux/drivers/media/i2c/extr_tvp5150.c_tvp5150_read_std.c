
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;


 int TVP5150_STATUS_REG_5 ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_NTSC_443 ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_N ;
 int V4L2_STD_PAL_Nc ;
 int V4L2_STD_SECAM ;
 int V4L2_STD_UNKNOWN ;
 int tvp5150_read (struct v4l2_subdev*,int ) ;

__attribute__((used)) static v4l2_std_id tvp5150_read_std(struct v4l2_subdev *sd)
{
 int val = tvp5150_read(sd, TVP5150_STATUS_REG_5);

 switch (val & 0x0F) {
 case 0x01:
  return V4L2_STD_NTSC;
 case 0x03:
  return V4L2_STD_PAL;
 case 0x05:
  return V4L2_STD_PAL_M;
 case 0x07:
  return V4L2_STD_PAL_N | V4L2_STD_PAL_Nc;
 case 0x09:
  return V4L2_STD_NTSC_443;
 case 0xb:
  return V4L2_STD_SECAM;
 default:
  return V4L2_STD_UNKNOWN;
 }
}
