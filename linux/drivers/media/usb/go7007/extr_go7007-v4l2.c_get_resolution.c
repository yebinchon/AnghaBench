
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct go7007 {int standard; TYPE_1__* board_info; } ;
struct TYPE_2__ {int sensor_width; int sensor_height; } ;






__attribute__((used)) static void get_resolution(struct go7007 *go, int *width, int *height)
{
 switch (go->standard) {
 case 130:
  *width = 720;
  *height = 480;
  break;
 case 128:
  *width = 720;
  *height = 576;
  break;
 case 129:
 default:
  *width = go->board_info->sensor_width;
  *height = go->board_info->sensor_height;
  break;
 }
}
