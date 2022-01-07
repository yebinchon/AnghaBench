
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_qdisc {int dummy; } ;
struct mlxsw_sp_port {TYPE_1__* tclass_qdiscs; } ;
struct TYPE_2__ {scalar_t__ prio_bitmap; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 int MLXSW_SP_PORT_DEFAULT_TCLASS ;
 int mlxsw_sp_port_prio_tc_set (struct mlxsw_sp_port*,int,int ) ;
 int mlxsw_sp_qdisc_destroy (struct mlxsw_sp_port*,TYPE_1__*) ;

__attribute__((used)) static int
mlxsw_sp_qdisc_prio_destroy(struct mlxsw_sp_port *mlxsw_sp_port,
       struct mlxsw_sp_qdisc *mlxsw_sp_qdisc)
{
 int i;

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  mlxsw_sp_port_prio_tc_set(mlxsw_sp_port, i,
       MLXSW_SP_PORT_DEFAULT_TCLASS);
  mlxsw_sp_qdisc_destroy(mlxsw_sp_port,
           &mlxsw_sp_port->tclass_qdiscs[i]);
  mlxsw_sp_port->tclass_qdiscs[i].prio_bitmap = 0;
 }

 return 0;
}
