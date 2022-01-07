
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct go7007 {unsigned int input; int aud_input; TYPE_3__* board_info; int sd_audio; int sd_video; } ;
struct TYPE_6__ {TYPE_2__* aud_inputs; TYPE_1__* inputs; scalar_t__ num_aud_inputs; int video_config; } ;
struct TYPE_5__ {int audio_input; } ;
struct TYPE_4__ {int audio_index; int video_input; } ;


 int audio ;
 int s_routing ;
 int v4l2_subdev_call (int ,int ,int ,int ,int ,int ) ;
 int video ;

__attribute__((used)) static void go7007_s_input(struct go7007 *go)
{
 unsigned int input = go->input;

 v4l2_subdev_call(go->sd_video, video, s_routing,
   go->board_info->inputs[input].video_input, 0,
   go->board_info->video_config);
 if (go->board_info->num_aud_inputs) {
  int aud_input = go->board_info->inputs[input].audio_index;

  v4l2_subdev_call(go->sd_audio, audio, s_routing,
   go->board_info->aud_inputs[aud_input].audio_input, 0, 0);
  go->aud_input = aud_input;
 }
}
