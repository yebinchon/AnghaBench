
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cx18 {int active_input; TYPE_2__* card; int sd_av; } ;
struct TYPE_4__ {TYPE_1__* video_inputs; } ;
struct TYPE_3__ {int video_input; } ;


 int s_routing ;
 int v4l2_subdev_call (int ,int ,int ,int ,int ,int ) ;
 int video ;

void cx18_video_set_io(struct cx18 *cx)
{
 int inp = cx->active_input;

 v4l2_subdev_call(cx->sd_av, video, s_routing,
   cx->card->video_inputs[inp].video_input, 0, 0);
}
