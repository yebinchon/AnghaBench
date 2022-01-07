
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_2__ {int sizeimage; } ;
struct rvin_dev {scalar_t__ state; int scratch_phys; int scratch; TYPE_1__ format; int dev; int qlock; } ;


 int RVIN_RETRIES ;
 int RVIN_TIMEOUT_MS ;
 scalar_t__ STOPPED ;
 scalar_t__ STOPPING ;
 int VB2_BUF_STATE_ERROR ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int msleep (int ) ;
 int return_all_buffers (struct rvin_dev*,int ) ;
 int rvin_capture_active (struct rvin_dev*) ;
 int rvin_capture_stop (struct rvin_dev*) ;
 int rvin_disable_interrupts (struct rvin_dev*) ;
 int rvin_set_stream (struct rvin_dev*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rvin_dev* vb2_get_drv_priv (struct vb2_queue*) ;
 int vin_err (struct rvin_dev*,char*) ;

__attribute__((used)) static void rvin_stop_streaming(struct vb2_queue *vq)
{
 struct rvin_dev *vin = vb2_get_drv_priv(vq);
 unsigned long flags;
 int retries = 0;

 spin_lock_irqsave(&vin->qlock, flags);

 vin->state = STOPPING;


 while (retries++ < RVIN_RETRIES) {

  rvin_capture_stop(vin);


  if (!rvin_capture_active(vin)) {
   vin->state = STOPPED;
   break;
  }

  spin_unlock_irqrestore(&vin->qlock, flags);
  msleep(RVIN_TIMEOUT_MS);
  spin_lock_irqsave(&vin->qlock, flags);
 }

 if (vin->state != STOPPED) {





  vin_err(vin, "Failed stop HW, something is seriously broken\n");
  vin->state = STOPPED;
 }


 return_all_buffers(vin, VB2_BUF_STATE_ERROR);

 spin_unlock_irqrestore(&vin->qlock, flags);

 rvin_set_stream(vin, 0);


 rvin_disable_interrupts(vin);


 dma_free_coherent(vin->dev, vin->format.sizeimage, vin->scratch,
     vin->scratch_phys);
}
