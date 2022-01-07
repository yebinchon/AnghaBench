
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct fimc_lite {int lock; int state; int irq_queue; int slock; int out_path; int sensor; } ;


 int ENOIOCTLCMD ;
 scalar_t__ FIMC_IO_ISP ;
 int ST_FLITE_OFF ;
 int ST_FLITE_RUN ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int fimc_find_remote_sensor (int *) ;
 int fimc_lite_hw_init (struct fimc_lite*,int) ;
 int flite_hw_capture_start (struct fimc_lite*) ;
 int flite_hw_capture_stop (struct fimc_lite*) ;
 int flite_hw_reset (struct fimc_lite*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 struct fimc_lite* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int fimc_lite_subdev_s_stream(struct v4l2_subdev *sd, int on)
{
 struct fimc_lite *fimc = v4l2_get_subdevdata(sd);
 unsigned long flags;
 int ret;
 fimc->sensor = fimc_find_remote_sensor(&sd->entity);

 if (atomic_read(&fimc->out_path) != FIMC_IO_ISP)
  return -ENOIOCTLCMD;

 mutex_lock(&fimc->lock);
 if (on) {
  flite_hw_reset(fimc);
  ret = fimc_lite_hw_init(fimc, 1);
  if (!ret) {
   spin_lock_irqsave(&fimc->slock, flags);
   flite_hw_capture_start(fimc);
   spin_unlock_irqrestore(&fimc->slock, flags);
  }
 } else {
  set_bit(ST_FLITE_OFF, &fimc->state);

  spin_lock_irqsave(&fimc->slock, flags);
  flite_hw_capture_stop(fimc);
  spin_unlock_irqrestore(&fimc->slock, flags);

  ret = wait_event_timeout(fimc->irq_queue,
    !test_bit(ST_FLITE_OFF, &fimc->state),
    msecs_to_jiffies(200));
  if (ret == 0)
   v4l2_err(sd, "s_stream(0) timeout\n");
  clear_bit(ST_FLITE_RUN, &fimc->state);
 }

 mutex_unlock(&fimc->lock);
 return ret;
}
