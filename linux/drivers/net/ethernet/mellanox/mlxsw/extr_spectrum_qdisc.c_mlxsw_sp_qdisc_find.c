
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlxsw_sp_qdisc {scalar_t__ handle; int ops; } ;
struct mlxsw_sp_port {struct mlxsw_sp_qdisc* tclass_qdiscs; struct mlxsw_sp_qdisc* root_qdisc; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 int MLXSW_SP_PRIO_CHILD_TO_TCLASS (int) ;
 scalar_t__ TC_H_MAJ (scalar_t__) ;
 int TC_H_MIN (scalar_t__) ;
 scalar_t__ TC_H_ROOT ;

__attribute__((used)) static struct mlxsw_sp_qdisc *
mlxsw_sp_qdisc_find(struct mlxsw_sp_port *mlxsw_sp_port, u32 parent,
      bool root_only)
{
 int tclass, child_index;

 if (parent == TC_H_ROOT)
  return mlxsw_sp_port->root_qdisc;

 if (root_only || !mlxsw_sp_port->root_qdisc ||
     !mlxsw_sp_port->root_qdisc->ops ||
     TC_H_MAJ(parent) != mlxsw_sp_port->root_qdisc->handle ||
     TC_H_MIN(parent) > IEEE_8021QAZ_MAX_TCS)
  return ((void*)0);

 child_index = TC_H_MIN(parent);
 tclass = MLXSW_SP_PRIO_CHILD_TO_TCLASS(child_index);
 return &mlxsw_sp_port->tclass_qdiscs[tclass];
}
