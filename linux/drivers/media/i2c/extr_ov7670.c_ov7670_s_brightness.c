
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 unsigned char COM8_AEC ;
 int REG_BRIGHT ;
 int REG_COM8 ;
 unsigned char ov7670_abs_to_sm (int) ;
 int ov7670_read (struct v4l2_subdev*,int ,unsigned char*) ;
 int ov7670_write (struct v4l2_subdev*,int ,unsigned char) ;

__attribute__((used)) static int ov7670_s_brightness(struct v4l2_subdev *sd, int value)
{
 unsigned char com8 = 0, v;
 int ret;

 ov7670_read(sd, REG_COM8, &com8);
 com8 &= ~COM8_AEC;
 ov7670_write(sd, REG_COM8, com8);
 v = ov7670_abs_to_sm(value);
 ret = ov7670_write(sd, REG_BRIGHT, v);
 return ret;
}
