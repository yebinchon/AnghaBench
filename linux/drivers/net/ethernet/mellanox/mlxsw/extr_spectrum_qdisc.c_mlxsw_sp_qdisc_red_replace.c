
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct tc_red_qopt_offload_params {int probability; int is_ecn; int max; int min; } ;
struct mlxsw_sp_qdisc {int tclass_num; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int mlxsw_sp_bytes_cells (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_tclass_congestion_enable (struct mlxsw_sp_port*,int ,int ,int ,int,int ) ;

__attribute__((used)) static int
mlxsw_sp_qdisc_red_replace(struct mlxsw_sp_port *mlxsw_sp_port,
      struct mlxsw_sp_qdisc *mlxsw_sp_qdisc,
      void *params)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct tc_red_qopt_offload_params *p = params;
 u8 tclass_num = mlxsw_sp_qdisc->tclass_num;
 u32 min, max;
 u64 prob;


 prob = p->probability;
 prob *= 100;
 prob = DIV_ROUND_UP(prob, 1 << 16);
 prob = DIV_ROUND_UP(prob, 1 << 16);
 min = mlxsw_sp_bytes_cells(mlxsw_sp, p->min);
 max = mlxsw_sp_bytes_cells(mlxsw_sp, p->max);
 return mlxsw_sp_tclass_congestion_enable(mlxsw_sp_port, tclass_num, min,
       max, prob, p->is_ecn);
}
