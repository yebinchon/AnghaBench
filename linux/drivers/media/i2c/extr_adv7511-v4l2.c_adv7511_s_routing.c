
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int adv7511_wr (struct v4l2_subdev*,int,int) ;
 int adv7511_wr_and_or (struct v4l2_subdev*,int,int,int) ;

__attribute__((used)) static int adv7511_s_routing(struct v4l2_subdev *sd, u32 input, u32 output, u32 config)
{

 adv7511_wr_and_or(sd, 0x73, 0xf8, 0x1);

 adv7511_wr(sd, 0x76, 0x00);


 adv7511_wr_and_or(sd, 0x14, 0xf0, 0x02);

 return 0;
}
