
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int hdmi_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static void adv7611_set_termination(struct v4l2_subdev *sd, bool enable)
{
 hdmi_write(sd, 0x83, enable ? 0xfe : 0xff);
}
