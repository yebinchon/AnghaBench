
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int ADV7180_NUM_OF_SKIP_FRAMES ;

__attribute__((used)) static int adv7180_get_skip_frames(struct v4l2_subdev *sd, u32 *frames)
{
 *frames = ADV7180_NUM_OF_SKIP_FRAMES;

 return 0;
}
