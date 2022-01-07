
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int COM7_RESET ;
 int REG_COM7 ;
 int msleep (int) ;
 int ov7670_write (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int ov7670_reset(struct v4l2_subdev *sd, u32 val)
{
 ov7670_write(sd, REG_COM7, COM7_RESET);
 msleep(1);
 return 0;
}
