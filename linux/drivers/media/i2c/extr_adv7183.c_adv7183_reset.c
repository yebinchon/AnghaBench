
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int ADV7183_POW_MANAGE ;
 int adv7183_read (struct v4l2_subdev*,int ) ;
 int adv7183_write (struct v4l2_subdev*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int adv7183_reset(struct v4l2_subdev *sd, u32 val)
{
 int reg;

 reg = adv7183_read(sd, ADV7183_POW_MANAGE) | 0x80;
 adv7183_write(sd, ADV7183_POW_MANAGE, reg);

 usleep_range(5000, 10000);
 return 0;
}
