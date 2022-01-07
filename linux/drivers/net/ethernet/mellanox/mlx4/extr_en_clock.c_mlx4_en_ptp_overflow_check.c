
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_dev {scalar_t__ last_overflow_check; int clock_lock; int clock; } ;


 scalar_t__ MLX4_EN_OVERFLOW_PERIOD ;
 scalar_t__ jiffies ;
 int time_is_before_jiffies (scalar_t__) ;
 int timecounter_read (int *) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

void mlx4_en_ptp_overflow_check(struct mlx4_en_dev *mdev)
{
 bool timeout = time_is_before_jiffies(mdev->last_overflow_check +
           MLX4_EN_OVERFLOW_PERIOD);
 unsigned long flags;

 if (timeout) {
  write_seqlock_irqsave(&mdev->clock_lock, flags);
  timecounter_read(&mdev->clock);
  write_sequnlock_irqrestore(&mdev->clock_lock, flags);
  mdev->last_overflow_check = jiffies;
 }
}
