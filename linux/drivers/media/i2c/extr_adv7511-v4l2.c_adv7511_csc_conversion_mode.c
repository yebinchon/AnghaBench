
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int adv7511_wr_and_or (struct v4l2_subdev*,int,int,int) ;

__attribute__((used)) static void adv7511_csc_conversion_mode(struct v4l2_subdev *sd, u8 mode)
{
 adv7511_wr_and_or(sd, 0x18, 0x9f, (mode & 0x3)<<5);
}
