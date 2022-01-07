
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int VS6624_USER_CMD ;
 int udelay (int) ;
 int vs6624_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int vs6624_s_stream(struct v4l2_subdev *sd, int enable)
{
 if (enable)
  vs6624_write(sd, VS6624_USER_CMD, 0x2);
 else
  vs6624_write(sd, VS6624_USER_CMD, 0x4);
 udelay(100);
 return 0;
}
