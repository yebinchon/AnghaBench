
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* pfc; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; } ;
struct TYPE_4__ {int pfc_cap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE_8021QAZ_MAX_TCS ;
 TYPE_2__* kzalloc (int,int ) ;

__attribute__((used)) static int mlxsw_sp_port_pfc_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 mlxsw_sp_port->dcb.pfc = kzalloc(sizeof(*mlxsw_sp_port->dcb.pfc),
      GFP_KERNEL);
 if (!mlxsw_sp_port->dcb.pfc)
  return -ENOMEM;

 mlxsw_sp_port->dcb.pfc->pfc_cap = IEEE_8021QAZ_MAX_TCS;

 return 0;
}
