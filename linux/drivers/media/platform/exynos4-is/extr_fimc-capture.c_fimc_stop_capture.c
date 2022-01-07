
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_dev {int state; int irq_queue; int slock; } ;


 int HZ ;
 int ST_CAPT_SHUT ;
 int fimc_capture_active (struct fimc_dev*) ;
 int fimc_capture_state_cleanup (struct fimc_dev*,int) ;
 int fimc_deactivate_capture (struct fimc_dev*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int fimc_stop_capture(struct fimc_dev *fimc, bool suspend)
{
 unsigned long flags;

 if (!fimc_capture_active(fimc))
  return 0;

 spin_lock_irqsave(&fimc->slock, flags);
 set_bit(ST_CAPT_SHUT, &fimc->state);
 fimc_deactivate_capture(fimc);
 spin_unlock_irqrestore(&fimc->slock, flags);

 wait_event_timeout(fimc->irq_queue,
      !test_bit(ST_CAPT_SHUT, &fimc->state),
      (2*HZ/10));

 return fimc_capture_state_cleanup(fimc, suspend);
}
