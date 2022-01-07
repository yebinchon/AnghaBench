
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_4__ {int paddr; int vaddr; int size; } ;
struct TYPE_3__ {int entity; } ;
struct sun4i_csi {TYPE_2__ scratch; int dev; TYPE_1__ vdev; int qlock; int src_subdev; } ;


 int VB2_BUF_STATE_ERROR ;
 int dev_dbg (int ,char*) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int media_pipeline_stop (int *) ;
 int return_all_buffers (struct sun4i_csi*,int ) ;
 int s_stream ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sun4i_csi_capture_stop (struct sun4i_csi*) ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 struct sun4i_csi* vb2_get_drv_priv (struct vb2_queue*) ;
 int video ;

__attribute__((used)) static void sun4i_csi_stop_streaming(struct vb2_queue *vq)
{
 struct sun4i_csi *csi = vb2_get_drv_priv(vq);
 unsigned long flags;

 dev_dbg(csi->dev, "Stopping capture\n");

 v4l2_subdev_call(csi->src_subdev, video, s_stream, 0);
 sun4i_csi_capture_stop(csi);


 spin_lock_irqsave(&csi->qlock, flags);
 return_all_buffers(csi, VB2_BUF_STATE_ERROR);
 spin_unlock_irqrestore(&csi->qlock, flags);

 media_pipeline_stop(&csi->vdev.entity);

 dma_free_coherent(csi->dev, csi->scratch.size, csi->scratch.vaddr,
     csi->scratch.paddr);
}
