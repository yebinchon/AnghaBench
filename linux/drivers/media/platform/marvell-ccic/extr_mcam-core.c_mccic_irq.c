
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {unsigned int nbufs; scalar_t__ buffer_mode; int flags; } ;


 scalar_t__ B_DMA_sg ;
 scalar_t__ CF_DMA_ACTIVE ;
 scalar_t__ CF_FRAME_SOF0 ;
 int FRAMEIRQS ;
 unsigned int IRQ_EOF0 ;
 unsigned int IRQ_HANDLED ;
 unsigned int IRQ_SOF0 ;
 int REG_IRQSTAT ;
 int clear_bit (scalar_t__,int *) ;
 int mcam_ctlr_stop (struct mcam_camera*) ;
 int mcam_frame_complete (struct mcam_camera*,unsigned int) ;
 int mcam_reg_write (struct mcam_camera*,int ,int ) ;
 int set_bit (scalar_t__,int *) ;
 scalar_t__ test_bit (scalar_t__,int *) ;

int mccic_irq(struct mcam_camera *cam, unsigned int irqs)
{
 unsigned int frame, handled = 0;

 mcam_reg_write(cam, REG_IRQSTAT, FRAMEIRQS);
 for (frame = 0; frame < cam->nbufs; frame++)
  if (irqs & (IRQ_EOF0 << frame) &&
   test_bit(CF_FRAME_SOF0 + frame, &cam->flags)) {
   mcam_frame_complete(cam, frame);
   handled = 1;
   clear_bit(CF_FRAME_SOF0 + frame, &cam->flags);
   if (cam->buffer_mode == B_DMA_sg)
    break;
  }





 for (frame = 0; frame < cam->nbufs; frame++) {
  if (irqs & (IRQ_SOF0 << frame)) {
   set_bit(CF_FRAME_SOF0 + frame, &cam->flags);
   handled = IRQ_HANDLED;
  }
 }

 if (handled == IRQ_HANDLED) {
  set_bit(CF_DMA_ACTIVE, &cam->flags);
  if (cam->buffer_mode == B_DMA_sg)
   mcam_ctlr_stop(cam);
 }
 return handled;
}
