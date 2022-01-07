
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int cx18_av_initialize (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_reset(struct v4l2_subdev *sd, u32 val)
{
 cx18_av_initialize(sd);
 return 0;
}
