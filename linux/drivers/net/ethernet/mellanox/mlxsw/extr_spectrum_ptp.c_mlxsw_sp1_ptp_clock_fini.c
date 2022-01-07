
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_ptp_clock {int overflow_work; int ptp; } ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (struct mlxsw_sp_ptp_clock*) ;
 int ptp_clock_unregister (int ) ;

void mlxsw_sp1_ptp_clock_fini(struct mlxsw_sp_ptp_clock *clock)
{
 ptp_clock_unregister(clock->ptp);
 cancel_delayed_work_sync(&clock->overflow_work);
 kfree(clock);
}
