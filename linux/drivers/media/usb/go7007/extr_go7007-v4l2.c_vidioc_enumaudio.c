
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_audio {size_t index; int capability; int name; } ;
struct go7007 {TYPE_2__* board_info; } ;
struct file {int dummy; } ;
struct TYPE_4__ {size_t num_aud_inputs; TYPE_1__* aud_inputs; } ;
struct TYPE_3__ {int name; } ;


 int EINVAL ;
 int V4L2_AUDCAP_STEREO ;
 int strscpy (int ,int ,int) ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enumaudio(struct file *file, void *fh, struct v4l2_audio *a)
{
 struct go7007 *go = video_drvdata(file);

 if (a->index >= go->board_info->num_aud_inputs)
  return -EINVAL;
 strscpy(a->name, go->board_info->aud_inputs[a->index].name,
  sizeof(a->name));
 a->capability = V4L2_AUDCAP_STEREO;
 return 0;
}
