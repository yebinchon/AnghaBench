
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_drm_pipeline {int force_brx_release; int wait_queue; int du_private; int (* du_complete ) (int ,unsigned int,int ) ;struct vsp1_entity* uif; } ;


 unsigned int VSP1_DL_FRAME_END_INTERNAL ;
 unsigned int VSP1_DU_STATUS_COMPLETE ;
 unsigned int VSP1_DU_STATUS_WRITEBACK ;
 int stub1 (int ,unsigned int,int ) ;
 int to_uif (int *) ;
 struct vsp1_drm_pipeline* to_vsp1_drm_pipeline (struct vsp1_pipeline*) ;
 int vsp1_uif_get_crc (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void vsp1_du_pipeline_frame_end(struct vsp1_pipeline *pipe,
           unsigned int completion)
{
 struct vsp1_drm_pipeline *drm_pipe = to_vsp1_drm_pipeline(pipe);

 if (drm_pipe->du_complete) {
  struct vsp1_entity *uif = drm_pipe->uif;
  unsigned int status = completion
        & (VSP1_DU_STATUS_COMPLETE |
           VSP1_DU_STATUS_WRITEBACK);
  u32 crc;

  crc = uif ? vsp1_uif_get_crc(to_uif(&uif->subdev)) : 0;
  drm_pipe->du_complete(drm_pipe->du_private, status, crc);
 }

 if (completion & VSP1_DL_FRAME_END_INTERNAL) {
  drm_pipe->force_brx_release = 0;
  wake_up(&drm_pipe->wait_queue);
 }
}
