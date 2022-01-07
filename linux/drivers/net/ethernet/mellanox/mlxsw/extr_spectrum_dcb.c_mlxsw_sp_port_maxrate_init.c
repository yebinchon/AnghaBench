
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* maxrate; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; } ;
struct TYPE_4__ {int * tc_maxrate; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE_8021QAZ_MAX_TCS ;
 int MLXSW_REG_QEEC_MAS_DIS ;
 TYPE_2__* kmalloc (int,int ) ;

__attribute__((used)) static int mlxsw_sp_port_maxrate_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 int i;

 mlxsw_sp_port->dcb.maxrate = kmalloc(sizeof(*mlxsw_sp_port->dcb.maxrate),
          GFP_KERNEL);
 if (!mlxsw_sp_port->dcb.maxrate)
  return -ENOMEM;

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
  mlxsw_sp_port->dcb.maxrate->tc_maxrate[i] = MLXSW_REG_QEEC_MAS_DIS;

 return 0;
}
