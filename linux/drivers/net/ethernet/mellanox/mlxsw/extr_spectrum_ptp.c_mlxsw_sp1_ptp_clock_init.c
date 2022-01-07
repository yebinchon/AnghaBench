
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int mask; int mult; int shift; int read; } ;
struct mlxsw_sp_ptp_clock {int overflow_work; int ptp; int ptp_info; int overflow_period; TYPE_1__ cycles; int tc; int core; int nominal_c_mult; int lock; } ;
struct mlxsw_sp {int core; } ;
struct device {int dummy; } ;


 int CLOCKSOURCE_MASK (int ) ;
 int ENOMEM ;
 struct mlxsw_sp_ptp_clock* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MLXSW_SP1_PTP_CLOCK_CYCLES_SHIFT ;
 int MLXSW_SP1_PTP_CLOCK_FREQ_KHZ ;
 int MLXSW_SP1_PTP_CLOCK_MASK ;
 int PTR_ERR (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int clocksource_khz2mult (int ,int ) ;
 int cyclecounter_cyc2ns (TYPE_1__*,int ,int ,int *) ;
 int dev_err (struct device*,char*,int) ;
 int div64_u64 (unsigned long long,int ) ;
 int div_u64 (int ,int) ;
 int kfree (struct mlxsw_sp_ptp_clock*) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 struct mlxsw_sp_ptp_clock* kzalloc (int,int ) ;
 int min (int ,int ) ;
 int mlxsw_core_schedule_dw (int *,int ) ;
 int mlxsw_sp1_ptp_clock_info ;
 int mlxsw_sp1_ptp_clock_overflow ;
 int mlxsw_sp1_ptp_read_frc ;
 int nsecs_to_jiffies (int ) ;
 int ptp_clock_register (int *,struct device*) ;
 int spin_lock_init (int *) ;
 int timecounter_init (int *,TYPE_1__*,int ) ;

struct mlxsw_sp_ptp_clock *
mlxsw_sp1_ptp_clock_init(struct mlxsw_sp *mlxsw_sp, struct device *dev)
{
 u64 overflow_cycles, nsec, frac = 0;
 struct mlxsw_sp_ptp_clock *clock;
 int err;

 clock = kzalloc(sizeof(*clock), GFP_KERNEL);
 if (!clock)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&clock->lock);
 clock->cycles.read = mlxsw_sp1_ptp_read_frc;
 clock->cycles.shift = MLXSW_SP1_PTP_CLOCK_CYCLES_SHIFT;
 clock->cycles.mult = clocksource_khz2mult(MLXSW_SP1_PTP_CLOCK_FREQ_KHZ,
        clock->cycles.shift);
 clock->nominal_c_mult = clock->cycles.mult;
 clock->cycles.mask = CLOCKSOURCE_MASK(MLXSW_SP1_PTP_CLOCK_MASK);
 clock->core = mlxsw_sp->core;

 timecounter_init(&clock->tc, &clock->cycles,
    ktime_to_ns(ktime_get_real()));
 overflow_cycles = div64_u64(~0ULL >> 1, clock->cycles.mult);
 overflow_cycles = min(overflow_cycles, div_u64(clock->cycles.mask, 3));

 nsec = cyclecounter_cyc2ns(&clock->cycles, overflow_cycles, 0, &frac);
 clock->overflow_period = nsecs_to_jiffies(nsec);

 INIT_DELAYED_WORK(&clock->overflow_work, mlxsw_sp1_ptp_clock_overflow);
 mlxsw_core_schedule_dw(&clock->overflow_work, 0);

 clock->ptp_info = mlxsw_sp1_ptp_clock_info;
 clock->ptp = ptp_clock_register(&clock->ptp_info, dev);
 if (IS_ERR(clock->ptp)) {
  err = PTR_ERR(clock->ptp);
  dev_err(dev, "ptp_clock_register failed %d\n", err);
  goto err_ptp_clock_register;
 }

 return clock;

err_ptp_clock_register:
 cancel_delayed_work_sync(&clock->overflow_work);
 kfree(clock);
 return ERR_PTR(err);
}
