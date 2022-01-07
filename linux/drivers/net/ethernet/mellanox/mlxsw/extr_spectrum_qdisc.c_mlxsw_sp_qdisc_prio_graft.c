
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_prio_qopt_offload_graft_params {scalar_t__ band; scalar_t__ child_handle; } ;
struct mlxsw_sp_qdisc {scalar_t__ handle; } ;
struct mlxsw_sp_port {struct mlxsw_sp_qdisc* tclass_qdiscs; } ;


 int EOPNOTSUPP ;
 scalar_t__ IEEE_8021QAZ_MAX_TCS ;
 int MLXSW_SP_PRIO_BAND_TO_TCLASS (scalar_t__) ;
 int mlxsw_sp_qdisc_destroy (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*) ;
 struct mlxsw_sp_qdisc* mlxsw_sp_qdisc_find_by_handle (struct mlxsw_sp_port*,scalar_t__) ;

__attribute__((used)) static int
mlxsw_sp_qdisc_prio_graft(struct mlxsw_sp_port *mlxsw_sp_port,
     struct mlxsw_sp_qdisc *mlxsw_sp_qdisc,
     struct tc_prio_qopt_offload_graft_params *p)
{
 int tclass_num = MLXSW_SP_PRIO_BAND_TO_TCLASS(p->band);
 struct mlxsw_sp_qdisc *old_qdisc;




 if (p->band < IEEE_8021QAZ_MAX_TCS &&
     mlxsw_sp_port->tclass_qdiscs[tclass_num].handle == p->child_handle)
  return 0;




 old_qdisc = mlxsw_sp_qdisc_find_by_handle(mlxsw_sp_port,
        p->child_handle);
 if (old_qdisc)
  mlxsw_sp_qdisc_destroy(mlxsw_sp_port, old_qdisc);

 mlxsw_sp_qdisc_destroy(mlxsw_sp_port,
          &mlxsw_sp_port->tclass_qdiscs[tclass_num]);
 return -EOPNOTSUPP;
}
