
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_sp_ptp_clock {int lock; int tc; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MTPPS_LEN ;
 int MLXSW_REG_MTUTC_LEN ;
 int MLXSW_REG_MTUTC_OPERATION_SET_TIME_AT_NEXT_SEC ;
 int NSEC_PER_SEC ;
 int div_u64 (int,int) ;
 int mlxsw_reg_mtpps_vpin_pack (char*,int) ;
 int mlxsw_reg_mtutc_pack (char*,int ,int ,int) ;
 int mlxsw_reg_write (struct mlxsw_core*,int ,char*) ;
 int mlxsw_sp1_ptp_ns2cycles (int *,int) ;
 int mtpps ;
 int mtutc ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
mlxsw_sp1_ptp_phc_settime(struct mlxsw_sp_ptp_clock *clock, u64 nsec)
{
 struct mlxsw_core *mlxsw_core = clock->core;
 u64 next_sec, next_sec_in_nsec, cycles;
 char mtutc_pl[MLXSW_REG_MTUTC_LEN];
 char mtpps_pl[MLXSW_REG_MTPPS_LEN];
 int err;

 next_sec = div_u64(nsec, NSEC_PER_SEC) + 1;
 next_sec_in_nsec = next_sec * NSEC_PER_SEC;

 spin_lock_bh(&clock->lock);
 cycles = mlxsw_sp1_ptp_ns2cycles(&clock->tc, next_sec_in_nsec);
 spin_unlock_bh(&clock->lock);

 mlxsw_reg_mtpps_vpin_pack(mtpps_pl, cycles);
 err = mlxsw_reg_write(mlxsw_core, MLXSW_REG(mtpps), mtpps_pl);
 if (err)
  return err;

 mlxsw_reg_mtutc_pack(mtutc_pl,
        MLXSW_REG_MTUTC_OPERATION_SET_TIME_AT_NEXT_SEC,
        0, next_sec);
 return mlxsw_reg_write(mlxsw_core, MLXSW_REG(mtutc), mtutc_pl);
}
