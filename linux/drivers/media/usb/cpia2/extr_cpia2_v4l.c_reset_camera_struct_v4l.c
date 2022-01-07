
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int stream_mode; } ;
struct TYPE_5__ {int flicker_mode_req; } ;
struct TYPE_7__ {int height; int width; } ;
struct TYPE_8__ {TYPE_2__ camera_state; TYPE_1__ flicker_control; TYPE_3__ roi; } ;
struct camera_data {int pixelformat; TYPE_4__ params; int num_frames; int frame_size; int height; int width; } ;


 int V4L2_PIX_FMT_JPEG ;
 int alternate ;
 int buffer_size ;
 int flicker_mode ;
 int num_buffers ;

__attribute__((used)) static void reset_camera_struct_v4l(struct camera_data *cam)
{
 cam->width = cam->params.roi.width;
 cam->height = cam->params.roi.height;

 cam->frame_size = buffer_size;
 cam->num_frames = num_buffers;


 cam->params.flicker_control.flicker_mode_req = flicker_mode;


 cam->params.camera_state.stream_mode = alternate;

 cam->pixelformat = V4L2_PIX_FMT_JPEG;
}
