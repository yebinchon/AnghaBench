
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int OV13858_NUM_OF_SKIP_FRAMES ;

__attribute__((used)) static int ov13858_get_skip_frames(struct v4l2_subdev *sd, u32 *frames)
{
 *frames = OV13858_NUM_OF_SKIP_FRAMES;

 return 0;
}
