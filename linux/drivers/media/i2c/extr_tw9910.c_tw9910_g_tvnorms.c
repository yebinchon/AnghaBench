
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;


 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;

__attribute__((used)) static int tw9910_g_tvnorms(struct v4l2_subdev *sd, v4l2_std_id *norm)
{
 *norm = V4L2_STD_NTSC | V4L2_STD_PAL;

 return 0;
}
