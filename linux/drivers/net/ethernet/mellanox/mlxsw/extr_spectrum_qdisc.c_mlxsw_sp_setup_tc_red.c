
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_red_qopt_offload {int command; int stats; int xstats; int handle; int set; int parent; } ;
struct mlxsw_sp_qdisc {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;


 int EOPNOTSUPP ;
 int MLXSW_SP_QDISC_RED ;

 int TC_RED_REPLACE ;


 int mlxsw_sp_qdisc_compare (struct mlxsw_sp_qdisc*,int ,int ) ;
 int mlxsw_sp_qdisc_destroy (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*) ;
 struct mlxsw_sp_qdisc* mlxsw_sp_qdisc_find (struct mlxsw_sp_port*,int ,int) ;
 int mlxsw_sp_qdisc_get_stats (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,int *) ;
 int mlxsw_sp_qdisc_get_xstats (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,int ) ;
 int mlxsw_sp_qdisc_ops_red ;
 int mlxsw_sp_qdisc_replace (struct mlxsw_sp_port*,int ,struct mlxsw_sp_qdisc*,int *,int *) ;

int mlxsw_sp_setup_tc_red(struct mlxsw_sp_port *mlxsw_sp_port,
     struct tc_red_qopt_offload *p)
{
 struct mlxsw_sp_qdisc *mlxsw_sp_qdisc;

 mlxsw_sp_qdisc = mlxsw_sp_qdisc_find(mlxsw_sp_port, p->parent, 0);
 if (!mlxsw_sp_qdisc)
  return -EOPNOTSUPP;

 if (p->command == TC_RED_REPLACE)
  return mlxsw_sp_qdisc_replace(mlxsw_sp_port, p->handle,
           mlxsw_sp_qdisc,
           &mlxsw_sp_qdisc_ops_red,
           &p->set);

 if (!mlxsw_sp_qdisc_compare(mlxsw_sp_qdisc, p->handle,
        MLXSW_SP_QDISC_RED))
  return -EOPNOTSUPP;

 switch (p->command) {
 case 130:
  return mlxsw_sp_qdisc_destroy(mlxsw_sp_port, mlxsw_sp_qdisc);
 case 128:
  return mlxsw_sp_qdisc_get_xstats(mlxsw_sp_port, mlxsw_sp_qdisc,
       p->xstats);
 case 129:
  return mlxsw_sp_qdisc_get_stats(mlxsw_sp_port, mlxsw_sp_qdisc,
      &p->stats);
 default:
  return -EOPNOTSUPP;
 }
}
