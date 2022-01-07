
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
typedef enum v4l2_exposure_auto_type { ____Placeholder_v4l2_exposure_auto_type } v4l2_exposure_auto_type ;


 unsigned char COM8_AEC ;
 int REG_COM8 ;
 int V4L2_EXPOSURE_AUTO ;
 int ov7670_read (struct v4l2_subdev*,int ,unsigned char*) ;
 int ov7670_write (struct v4l2_subdev*,int ,unsigned char) ;

__attribute__((used)) static int ov7670_s_autoexp(struct v4l2_subdev *sd,
  enum v4l2_exposure_auto_type value)
{
 int ret;
 unsigned char com8;

 ret = ov7670_read(sd, REG_COM8, &com8);
 if (ret == 0) {
  if (value == V4L2_EXPOSURE_AUTO)
   com8 |= COM8_AEC;
  else
   com8 &= ~COM8_AEC;
  ret = ov7670_write(sd, REG_COM8, com8);
 }
 return ret;
}
