
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_lite {int state; int irq_queue; int slock; } ;


 int HZ ;
 int ST_FLITE_OFF ;
 int fimc_lite_active (struct fimc_lite*) ;
 int fimc_lite_reinit (struct fimc_lite*,int) ;
 int flite_hw_capture_stop (struct fimc_lite*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int fimc_lite_stop_capture(struct fimc_lite *fimc, bool suspend)
{
 unsigned long flags;

 if (!fimc_lite_active(fimc))
  return 0;

 spin_lock_irqsave(&fimc->slock, flags);
 set_bit(ST_FLITE_OFF, &fimc->state);
 flite_hw_capture_stop(fimc);
 spin_unlock_irqrestore(&fimc->slock, flags);

 wait_event_timeout(fimc->irq_queue,
      !test_bit(ST_FLITE_OFF, &fimc->state),
      (2*HZ/10));

 return fimc_lite_reinit(fimc, suspend);
}
