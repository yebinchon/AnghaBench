
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int write_reg (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static int tw9903_s_video_routing(struct v4l2_subdev *sd, u32 input,
          u32 output, u32 config)
{
 write_reg(sd, 0x02, 0x40 | (input << 1));
 return 0;
}
