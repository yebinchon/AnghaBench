
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_video {int pipe_index; TYPE_1__* rwpf; } ;
struct vsp1_vb2_buffer {int mem; } ;
struct vsp1_rwpf {struct vsp1_video* video; } ;
struct vsp1_pipeline {int buffers_ready; } ;
struct TYPE_2__ {int mem; } ;


 struct vsp1_vb2_buffer* vsp1_video_complete_buffer (struct vsp1_video*) ;

__attribute__((used)) static void vsp1_video_frame_end(struct vsp1_pipeline *pipe,
     struct vsp1_rwpf *rwpf)
{
 struct vsp1_video *video = rwpf->video;
 struct vsp1_vb2_buffer *buf;

 buf = vsp1_video_complete_buffer(video);
 if (buf == ((void*)0))
  return;

 video->rwpf->mem = buf->mem;
 pipe->buffers_ready |= 1 << video->pipe_index;
}
