
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int hdmi_write (struct v4l2_subdev*,int,int) ;
 int hdmi_write_and_or (struct v4l2_subdev*,int,int,int) ;
 int io_write (struct v4l2_subdev*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void disable_input(struct v4l2_subdev *sd)
{
 hdmi_write_and_or(sd, 0x1a, 0xef, 0x10);
 msleep(16);
 io_write(sd, 0x15, 0xbe);
 hdmi_write(sd, 0x01, 0x78);
}
