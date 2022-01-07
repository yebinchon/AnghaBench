
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx_v4l2 {unsigned int sensor_yres; int norm; } ;
struct TYPE_2__ {scalar_t__ max_range_640_480; } ;
struct em28xx {TYPE_1__ board; scalar_t__ is_webcam; struct em28xx_v4l2* v4l2; } ;


 int V4L2_STD_625_50 ;

__attribute__((used)) static inline unsigned int norm_maxh(struct em28xx *dev)
{
 struct em28xx_v4l2 *v4l2 = dev->v4l2;

 if (dev->is_webcam)
  return v4l2->sensor_yres;

 if (dev->board.max_range_640_480)
  return 480;

 return (v4l2->norm & V4L2_STD_625_50) ? 576 : 480;
}
