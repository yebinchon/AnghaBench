
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlxsw_sp_qdisc {scalar_t__ handle; } ;
struct mlxsw_sp_port {struct mlxsw_sp_qdisc* tclass_qdiscs; struct mlxsw_sp_qdisc* root_qdisc; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 scalar_t__ TC_H_UNSPEC ;

__attribute__((used)) static struct mlxsw_sp_qdisc *
mlxsw_sp_qdisc_find_by_handle(struct mlxsw_sp_port *mlxsw_sp_port, u32 handle)
{
 int i;

 if (mlxsw_sp_port->root_qdisc->handle == handle)
  return mlxsw_sp_port->root_qdisc;

 if (mlxsw_sp_port->root_qdisc->handle == TC_H_UNSPEC)
  return ((void*)0);

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
  if (mlxsw_sp_port->tclass_qdiscs[i].handle == handle)
   return &mlxsw_sp_port->tclass_qdiscs[i];

 return ((void*)0);
}
