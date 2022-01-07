
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int mult; int shift; int mask; int read; } ;
struct mlx4_en_dev {int * ptp_clock; TYPE_2__* pdev; TYPE_4__ ptp_clock_info; int clock_lock; TYPE_3__ cycles; int clock; int nominal_c_mult; struct mlx4_dev* dev; } ;
struct TYPE_7__ {int hca_core_clock; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_8__ {int dev; } ;


 int CLOCKSOURCE_MASK (int) ;
 scalar_t__ IS_ERR (int *) ;
 int clocksource_khz2mult (int,int ) ;
 int freq_to_shift (int) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_4__ mlx4_en_ptp_clock_info ;
 int mlx4_en_read_clock ;
 int mlx4_err (struct mlx4_en_dev*,char*) ;
 int mlx4_info (struct mlx4_en_dev*,char*) ;
 int * ptp_clock_register (TYPE_4__*,int *) ;
 int seqlock_init (int *) ;
 int snprintf (int ,int,char*) ;
 int timecounter_init (int *,TYPE_3__*,int ) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

void mlx4_en_init_timestamp(struct mlx4_en_dev *mdev)
{
 struct mlx4_dev *dev = mdev->dev;
 unsigned long flags;





 if (mdev->ptp_clock)
  return;

 seqlock_init(&mdev->clock_lock);

 memset(&mdev->cycles, 0, sizeof(mdev->cycles));
 mdev->cycles.read = mlx4_en_read_clock;
 mdev->cycles.mask = CLOCKSOURCE_MASK(48);
 mdev->cycles.shift = freq_to_shift(dev->caps.hca_core_clock);
 mdev->cycles.mult =
  clocksource_khz2mult(1000 * dev->caps.hca_core_clock, mdev->cycles.shift);
 mdev->nominal_c_mult = mdev->cycles.mult;

 write_seqlock_irqsave(&mdev->clock_lock, flags);
 timecounter_init(&mdev->clock, &mdev->cycles,
    ktime_to_ns(ktime_get_real()));
 write_sequnlock_irqrestore(&mdev->clock_lock, flags);


 mdev->ptp_clock_info = mlx4_en_ptp_clock_info;
 snprintf(mdev->ptp_clock_info.name, 16, "mlx4 ptp");

 mdev->ptp_clock = ptp_clock_register(&mdev->ptp_clock_info,
          &mdev->pdev->dev);
 if (IS_ERR(mdev->ptp_clock)) {
  mdev->ptp_clock = ((void*)0);
  mlx4_err(mdev, "ptp_clock_register failed\n");
 } else if (mdev->ptp_clock) {
  mlx4_info(mdev, "registered PHC clock\n");
 }

}
