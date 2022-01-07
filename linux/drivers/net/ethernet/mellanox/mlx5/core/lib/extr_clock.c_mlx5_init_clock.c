
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct mlx5_ib_clock_info {scalar_t__ overflow_period; int frac; int shift; int mult; int mask; int cycles; int nsec; } ;
struct TYPE_12__ {scalar_t__ n_pins; } ;
struct TYPE_8__ {int out_work; } ;
struct TYPE_10__ {int frac; int cycle_last; int nsec; } ;
struct TYPE_11__ {int shift; int mask; int mult; int read; } ;
struct mlx5_clock {int pps_nb; int * ptp; TYPE_5__ ptp_info; int overflow_work; scalar_t__ overflow_period; TYPE_1__ pps_info; TYPE_3__ tc; TYPE_4__ cycles; int nominal_c_mult; struct mlx5_core_dev* mdev; int lock; } ;
struct mlx5_core_dev {TYPE_2__* pdev; struct mlx5_ib_clock_info* clock_info; struct mlx5_clock clock; } ;
struct TYPE_9__ {int dev; } ;


 int CLOCKSOURCE_MASK (int) ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CYCLES_SHIFT ;
 int MLX5_NB_INIT (int *,int ,int ) ;
 scalar_t__ MLX5_PPS_CAP (struct mlx5_core_dev*) ;
 int NSEC_PER_SEC ;
 int PPS_EVENT ;
 int PTR_ERR (int *) ;
 int clocksource_khz2mult (int ,int ) ;
 scalar_t__ cyclecounter_cyc2ns (TYPE_4__*,scalar_t__,scalar_t__,scalar_t__*) ;
 int device_frequency_khz ;
 scalar_t__ div64_u64 (unsigned long long,int ) ;
 int div_u64 (int ,int) ;
 int do_div (scalar_t__,int) ;
 scalar_t__ get_zeroed_page (int ) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 scalar_t__ min (scalar_t__,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,...) ;
 int mlx5_eq_notifier_register (struct mlx5_core_dev*,int *) ;
 int mlx5_get_pps_caps (struct mlx5_core_dev*) ;
 int mlx5_init_pin_config (struct mlx5_clock*) ;
 int mlx5_pps_event ;
 int mlx5_pps_out ;
 TYPE_5__ mlx5_ptp_clock_info ;
 int mlx5_timestamp_overflow ;
 int * ptp_clock_register (TYPE_5__*,int *) ;
 int read_internal_timer ;
 int schedule_delayed_work (int *,int ) ;
 int seqlock_init (int *) ;
 int timecounter_init (TYPE_3__*,TYPE_4__*,int ) ;

void mlx5_init_clock(struct mlx5_core_dev *mdev)
{
 struct mlx5_clock *clock = &mdev->clock;
 u64 overflow_cycles;
 u64 ns;
 u64 frac = 0;
 u32 dev_freq;

 dev_freq = MLX5_CAP_GEN(mdev, device_frequency_khz);
 if (!dev_freq) {
  mlx5_core_warn(mdev, "invalid device_frequency_khz, aborting HW clock init\n");
  return;
 }
 seqlock_init(&clock->lock);
 clock->cycles.read = read_internal_timer;
 clock->cycles.shift = MLX5_CYCLES_SHIFT;
 clock->cycles.mult = clocksource_khz2mult(dev_freq,
        clock->cycles.shift);
 clock->nominal_c_mult = clock->cycles.mult;
 clock->cycles.mask = CLOCKSOURCE_MASK(41);
 clock->mdev = mdev;

 timecounter_init(&clock->tc, &clock->cycles,
    ktime_to_ns(ktime_get_real()));
 overflow_cycles = div64_u64(~0ULL >> 1, clock->cycles.mult);
 overflow_cycles = min(overflow_cycles, div_u64(clock->cycles.mask, 3));

 ns = cyclecounter_cyc2ns(&clock->cycles, overflow_cycles,
     frac, &frac);
 do_div(ns, NSEC_PER_SEC / HZ);
 clock->overflow_period = ns;

 mdev->clock_info =
  (struct mlx5_ib_clock_info *)get_zeroed_page(GFP_KERNEL);
 if (mdev->clock_info) {
  mdev->clock_info->nsec = clock->tc.nsec;
  mdev->clock_info->cycles = clock->tc.cycle_last;
  mdev->clock_info->mask = clock->cycles.mask;
  mdev->clock_info->mult = clock->nominal_c_mult;
  mdev->clock_info->shift = clock->cycles.shift;
  mdev->clock_info->frac = clock->tc.frac;
  mdev->clock_info->overflow_period = clock->overflow_period;
 }

 INIT_WORK(&clock->pps_info.out_work, mlx5_pps_out);
 INIT_DELAYED_WORK(&clock->overflow_work, mlx5_timestamp_overflow);
 if (clock->overflow_period)
  schedule_delayed_work(&clock->overflow_work, 0);
 else
  mlx5_core_warn(mdev, "invalid overflow period, overflow_work is not scheduled\n");


 clock->ptp_info = mlx5_ptp_clock_info;


 if (MLX5_PPS_CAP(mdev))
  mlx5_get_pps_caps(mdev);
 if (clock->ptp_info.n_pins)
  mlx5_init_pin_config(clock);

 clock->ptp = ptp_clock_register(&clock->ptp_info,
     &mdev->pdev->dev);
 if (IS_ERR(clock->ptp)) {
  mlx5_core_warn(mdev, "ptp_clock_register failed %ld\n",
          PTR_ERR(clock->ptp));
  clock->ptp = ((void*)0);
 }

 MLX5_NB_INIT(&clock->pps_nb, mlx5_pps_event, PPS_EVENT);
 mlx5_eq_notifier_register(mdev, &clock->pps_nb);
}
