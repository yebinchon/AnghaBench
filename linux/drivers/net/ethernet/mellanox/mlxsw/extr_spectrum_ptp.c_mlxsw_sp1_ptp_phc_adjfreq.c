
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_ptp_clock {struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MTUTC_LEN ;
 int MLXSW_REG_MTUTC_OPERATION_ADJUST_FREQ ;
 int mlxsw_reg_mtutc_pack (char*,int ,int,int ) ;
 int mlxsw_reg_write (struct mlxsw_core*,int ,char*) ;
 int mtutc ;

__attribute__((used)) static int
mlxsw_sp1_ptp_phc_adjfreq(struct mlxsw_sp_ptp_clock *clock, int freq_adj)
{
 struct mlxsw_core *mlxsw_core = clock->core;
 char mtutc_pl[MLXSW_REG_MTUTC_LEN];

 mlxsw_reg_mtutc_pack(mtutc_pl, MLXSW_REG_MTUTC_OPERATION_ADJUST_FREQ,
        freq_adj, 0);
 return mlxsw_reg_write(mlxsw_core, MLXSW_REG(mtutc), mtutc_pl);
}
