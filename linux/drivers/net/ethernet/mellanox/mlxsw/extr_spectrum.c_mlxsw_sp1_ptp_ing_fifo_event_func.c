
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;
struct mlxsw_reg_info {int dummy; } ;


 int mlxsw_sp1_ptp_fifo_event_func (struct mlxsw_sp*,char*,int) ;

__attribute__((used)) static void mlxsw_sp1_ptp_ing_fifo_event_func(const struct mlxsw_reg_info *reg,
           char *mtpptr_pl, void *priv)
{
 struct mlxsw_sp *mlxsw_sp = priv;

 mlxsw_sp1_ptp_fifo_event_func(mlxsw_sp, mtpptr_pl, 1);
}
