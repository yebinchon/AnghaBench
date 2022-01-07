
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_prio_qopt_offload {int command; int graft_params; int stats; int handle; int replace_params; int parent; } ;
struct mlxsw_sp_qdisc {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;


 int EOPNOTSUPP ;
 int MLXSW_SP_QDISC_PRIO ;


 int TC_PRIO_REPLACE ;

 int mlxsw_sp_qdisc_compare (struct mlxsw_sp_qdisc*,int ,int ) ;
 int mlxsw_sp_qdisc_destroy (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*) ;
 struct mlxsw_sp_qdisc* mlxsw_sp_qdisc_find (struct mlxsw_sp_port*,int ,int) ;
 int mlxsw_sp_qdisc_get_stats (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,int *) ;
 int mlxsw_sp_qdisc_ops_prio ;
 int mlxsw_sp_qdisc_prio_graft (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,int *) ;
 int mlxsw_sp_qdisc_replace (struct mlxsw_sp_port*,int ,struct mlxsw_sp_qdisc*,int *,int *) ;

int mlxsw_sp_setup_tc_prio(struct mlxsw_sp_port *mlxsw_sp_port,
      struct tc_prio_qopt_offload *p)
{
 struct mlxsw_sp_qdisc *mlxsw_sp_qdisc;

 mlxsw_sp_qdisc = mlxsw_sp_qdisc_find(mlxsw_sp_port, p->parent, 1);
 if (!mlxsw_sp_qdisc)
  return -EOPNOTSUPP;

 if (p->command == TC_PRIO_REPLACE)
  return mlxsw_sp_qdisc_replace(mlxsw_sp_port, p->handle,
           mlxsw_sp_qdisc,
           &mlxsw_sp_qdisc_ops_prio,
           &p->replace_params);

 if (!mlxsw_sp_qdisc_compare(mlxsw_sp_qdisc, p->handle,
        MLXSW_SP_QDISC_PRIO))
  return -EOPNOTSUPP;

 switch (p->command) {
 case 130:
  return mlxsw_sp_qdisc_destroy(mlxsw_sp_port, mlxsw_sp_qdisc);
 case 128:
  return mlxsw_sp_qdisc_get_stats(mlxsw_sp_port, mlxsw_sp_qdisc,
      &p->stats);
 case 129:
  return mlxsw_sp_qdisc_prio_graft(mlxsw_sp_port, mlxsw_sp_qdisc,
       &p->graft_params);
 default:
  return -EOPNOTSUPP;
 }
}
