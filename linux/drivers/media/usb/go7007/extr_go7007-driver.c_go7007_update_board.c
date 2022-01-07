
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007_board_info {int sensor_flags; int sensor_width; int sensor_height; int sensor_framerate; int sensor_h_offset; int sensor_v_offset; } ;
struct go7007 {int width; int height; int sensor_framerate; int encoder_h_offset; int encoder_v_offset; int standard; int std; struct go7007_board_info* board_info; } ;


 int GO7007_SENSOR_TV ;
 int GO7007_STD_NTSC ;
 int GO7007_STD_OTHER ;
 int V4L2_STD_NTSC_M ;

void go7007_update_board(struct go7007 *go)
{
 const struct go7007_board_info *board = go->board_info;

 if (board->sensor_flags & GO7007_SENSOR_TV) {
  go->standard = GO7007_STD_NTSC;
  go->std = V4L2_STD_NTSC_M;
  go->width = 720;
  go->height = 480;
  go->sensor_framerate = 30000;
 } else {
  go->standard = GO7007_STD_OTHER;
  go->width = board->sensor_width;
  go->height = board->sensor_height;
  go->sensor_framerate = board->sensor_framerate;
 }
 go->encoder_v_offset = board->sensor_v_offset;
 go->encoder_h_offset = board->sensor_h_offset;
}
