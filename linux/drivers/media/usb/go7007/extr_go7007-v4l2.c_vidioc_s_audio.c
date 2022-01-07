
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_audio {scalar_t__ index; } ;
struct go7007 {size_t aud_input; TYPE_1__* board_info; int sd_audio; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int audio_input; } ;
struct TYPE_3__ {scalar_t__ num_aud_inputs; TYPE_2__* aud_inputs; } ;


 int EINVAL ;
 int audio ;
 int s_routing ;
 int v4l2_subdev_call (int ,int ,int ,int ,int ,int ) ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_audio(struct file *file, void *fh,
 const struct v4l2_audio *a)
{
 struct go7007 *go = video_drvdata(file);

 if (a->index >= go->board_info->num_aud_inputs)
  return -EINVAL;
 go->aud_input = a->index;
 v4l2_subdev_call(go->sd_audio, audio, s_routing,
  go->board_info->aud_inputs[go->aud_input].audio_input, 0, 0);
 return 0;
}
