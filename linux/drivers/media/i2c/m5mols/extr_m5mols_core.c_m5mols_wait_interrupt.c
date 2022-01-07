
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int irq_done; int irq_waitq; } ;


 int ETIMEDOUT ;
 int M5MOLS_I2C_RDY_WAIT_FL ;
 int SYSTEM_INT_FACTOR ;
 int atomic_add_unless (int *,int,int ) ;
 int m5mols_busy_wait (struct v4l2_subdev*,int ,int,int,int) ;
 int msecs_to_jiffies (int ) ;
 struct m5mols_info* to_m5mols (struct v4l2_subdev*) ;
 int wait_event_interruptible_timeout (int ,int ,int ) ;

int m5mols_wait_interrupt(struct v4l2_subdev *sd, u8 irq_mask, u32 timeout)
{
 struct m5mols_info *info = to_m5mols(sd);

 int ret = wait_event_interruptible_timeout(info->irq_waitq,
    atomic_add_unless(&info->irq_done, -1, 0),
    msecs_to_jiffies(timeout));
 if (ret <= 0)
  return ret ? ret : -ETIMEDOUT;

 return m5mols_busy_wait(sd, SYSTEM_INT_FACTOR, irq_mask,
    M5MOLS_I2C_RDY_WAIT_FL | irq_mask, -1);
}
