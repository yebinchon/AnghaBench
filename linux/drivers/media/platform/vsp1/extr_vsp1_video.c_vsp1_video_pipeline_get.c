
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsp1_video {TYPE_2__* rwpf; } ;
struct vsp1_pipeline {int kref; } ;
struct TYPE_3__ {struct vsp1_pipeline* pipe; } ;
struct TYPE_4__ {TYPE_1__ entity; } ;


 int ENOMEM ;
 struct vsp1_pipeline* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct vsp1_pipeline*) ;
 int kref_get (int *) ;
 struct vsp1_pipeline* kzalloc (int,int ) ;
 int vsp1_pipeline_reset (struct vsp1_pipeline*) ;
 int vsp1_video_pipeline_init (struct vsp1_pipeline*,struct vsp1_video*) ;

__attribute__((used)) static struct vsp1_pipeline *vsp1_video_pipeline_get(struct vsp1_video *video)
{
 struct vsp1_pipeline *pipe;
 int ret;







 if (!video->rwpf->entity.pipe) {
  pipe = kzalloc(sizeof(*pipe), GFP_KERNEL);
  if (!pipe)
   return ERR_PTR(-ENOMEM);

  ret = vsp1_video_pipeline_init(pipe, video);
  if (ret < 0) {
   vsp1_pipeline_reset(pipe);
   kfree(pipe);
   return ERR_PTR(ret);
  }
 } else {
  pipe = video->rwpf->entity.pipe;
  kref_get(&pipe->kref);
 }

 return pipe;
}
