
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_device {TYPE_1__* line; } ;
struct TYPE_2__ {int video_out; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int msm_video_stop_streaming (int *) ;

void msm_vfe_stop_streaming(struct vfe_device *vfe)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(vfe->line); i++)
  msm_video_stop_streaming(&vfe->line[i].video_out);
}
