
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_prio_qopt_offload_params {scalar_t__ bands; } ;
struct mlxsw_sp_qdisc {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ IEEE_8021QAZ_MAX_TCS ;

__attribute__((used)) static int
mlxsw_sp_qdisc_prio_check_params(struct mlxsw_sp_port *mlxsw_sp_port,
     struct mlxsw_sp_qdisc *mlxsw_sp_qdisc,
     void *params)
{
 struct tc_prio_qopt_offload_params *p = params;

 if (p->bands > IEEE_8021QAZ_MAX_TCS)
  return -EOPNOTSUPP;

 return 0;
}
