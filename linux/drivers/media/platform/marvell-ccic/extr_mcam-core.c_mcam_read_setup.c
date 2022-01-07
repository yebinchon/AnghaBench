
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {scalar_t__ buffer_mode; scalar_t__ nbufs; scalar_t__ bus_type; int dev_lock; int flags; int state; } ;


 scalar_t__ B_vmalloc ;
 int CF_DMA_ACTIVE ;
 int CF_SG_RESTART ;
 int ENOMEM ;
 int S_STREAMING ;
 scalar_t__ V4L2_MBUS_CSI2_DPHY ;
 int clear_bit (int ,int *) ;
 scalar_t__ mcam_alloc_dma_bufs (struct mcam_camera*,int ) ;
 int mcam_cam_configure (struct mcam_camera*) ;
 int mcam_ctlr_configure (struct mcam_camera*) ;
 int mcam_ctlr_irq_enable (struct mcam_camera*) ;
 int mcam_ctlr_start (struct mcam_camera*) ;
 int mcam_disable_mipi (struct mcam_camera*) ;
 int mcam_enable_mipi (struct mcam_camera*) ;
 scalar_t__ mcam_needs_config (struct mcam_camera*) ;
 int mcam_reset_buffers (struct mcam_camera*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int mcam_read_setup(struct mcam_camera *cam)
{
 int ret;
 unsigned long flags;





 if (cam->buffer_mode == B_vmalloc && cam->nbufs == 0 &&
   mcam_alloc_dma_bufs(cam, 0))
  return -ENOMEM;

 if (mcam_needs_config(cam)) {
  mcam_cam_configure(cam);
  ret = mcam_ctlr_configure(cam);
  if (ret)
   return ret;
 }




 spin_lock_irqsave(&cam->dev_lock, flags);
 clear_bit(CF_DMA_ACTIVE, &cam->flags);
 mcam_reset_buffers(cam);
 if (cam->bus_type == V4L2_MBUS_CSI2_DPHY)
  mcam_enable_mipi(cam);
 else
  mcam_disable_mipi(cam);
 mcam_ctlr_irq_enable(cam);
 cam->state = S_STREAMING;
 if (!test_bit(CF_SG_RESTART, &cam->flags))
  mcam_ctlr_start(cam);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
 return 0;
}
