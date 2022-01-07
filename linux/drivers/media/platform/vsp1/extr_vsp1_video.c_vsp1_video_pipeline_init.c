
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_video {int dummy; } ;
struct vsp1_pipeline {int frame_end; } ;


 int vsp1_pipeline_init (struct vsp1_pipeline*) ;
 int vsp1_video_pipeline_build (struct vsp1_pipeline*,struct vsp1_video*) ;
 int vsp1_video_pipeline_frame_end ;

__attribute__((used)) static int vsp1_video_pipeline_init(struct vsp1_pipeline *pipe,
        struct vsp1_video *video)
{
 vsp1_pipeline_init(pipe);

 pipe->frame_end = vsp1_video_pipeline_frame_end;

 return vsp1_video_pipeline_build(pipe, video);
}
