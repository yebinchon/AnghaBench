
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int REG_CONTRAS ;
 int ov7670_write (struct v4l2_subdev*,int ,unsigned char) ;

__attribute__((used)) static int ov7670_s_contrast(struct v4l2_subdev *sd, int value)
{
 return ov7670_write(sd, REG_CONTRAS, (unsigned char) value);
}
