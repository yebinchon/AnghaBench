
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int ad9389b_wr (struct v4l2_subdev*,int,int) ;
 int ad9389b_wr_and_or (struct v4l2_subdev*,int,int,int) ;

__attribute__((used)) static int ad9389b_s_routing(struct v4l2_subdev *sd, u32 input, u32 output, u32 config)
{




 ad9389b_wr_and_or(sd, 0x50, 0x1f, 0x20);

 ad9389b_wr(sd, 0x51, 0x00);



 ad9389b_wr_and_or(sd, 0x14, 0xf0, 0x02);

 return 0;
}
