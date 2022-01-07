
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int list_pipe; } ;
struct vsp1_rwpf {TYPE_7__ entity; } ;
struct vsp1_pipeline {int entities; TYPE_4__* lif; TYPE_3__* output; int frame_end; } ;
struct vsp1_drm_pipeline {int * uif; int wait_queue; struct vsp1_pipeline pipe; } ;
struct vsp1_device {struct vsp1_rwpf** rpf; TYPE_6__* info; TYPE_5__** uif; TYPE_1__** lif; TYPE_3__** wpf; TYPE_8__* drm; int dev; } ;
struct TYPE_16__ {struct vsp1_drm_pipeline* pipe; int lock; } ;
struct TYPE_14__ {unsigned int lif_count; unsigned int uif_count; unsigned int rpf_count; } ;
struct TYPE_13__ {int entity; } ;
struct TYPE_12__ {int list_pipe; struct vsp1_pipeline* pipe; } ;
struct TYPE_10__ {int list_pipe; scalar_t__ sink_pad; TYPE_4__* sink; struct vsp1_pipeline* pipe; } ;
struct TYPE_11__ {TYPE_2__ entity; } ;
struct TYPE_9__ {TYPE_4__ entity; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_8__* devm_kzalloc (int ,int,int ) ;
 int init_waitqueue_head (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int vsp1_du_pipeline_frame_end ;
 int vsp1_pipeline_init (struct vsp1_pipeline*) ;

int vsp1_drm_init(struct vsp1_device *vsp1)
{
 unsigned int i;

 vsp1->drm = devm_kzalloc(vsp1->dev, sizeof(*vsp1->drm), GFP_KERNEL);
 if (!vsp1->drm)
  return -ENOMEM;

 mutex_init(&vsp1->drm->lock);


 for (i = 0; i < vsp1->info->lif_count; ++i) {
  struct vsp1_drm_pipeline *drm_pipe = &vsp1->drm->pipe[i];
  struct vsp1_pipeline *pipe = &drm_pipe->pipe;

  init_waitqueue_head(&drm_pipe->wait_queue);

  vsp1_pipeline_init(pipe);

  pipe->frame_end = vsp1_du_pipeline_frame_end;





  pipe->output = vsp1->wpf[i];
  pipe->lif = &vsp1->lif[i]->entity;

  pipe->output->entity.pipe = pipe;
  pipe->output->entity.sink = pipe->lif;
  pipe->output->entity.sink_pad = 0;
  list_add_tail(&pipe->output->entity.list_pipe, &pipe->entities);

  pipe->lif->pipe = pipe;
  list_add_tail(&pipe->lif->list_pipe, &pipe->entities);





  if (i < vsp1->info->uif_count)
   drm_pipe->uif = &vsp1->uif[i]->entity;
 }


 for (i = 0; i < vsp1->info->rpf_count; ++i) {
  struct vsp1_rwpf *input = vsp1->rpf[i];

  INIT_LIST_HEAD(&input->entity.list_pipe);
 }

 return 0;
}
