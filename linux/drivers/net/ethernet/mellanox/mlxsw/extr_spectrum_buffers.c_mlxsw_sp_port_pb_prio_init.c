
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_port {TYPE_1__* mlxsw_sp; int local_port; } ;
struct TYPE_2__ {int core; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PPTB_LEN ;
 int mlxsw_reg_pptb_pack (char*,int ) ;
 int mlxsw_reg_pptb_prio_to_buff_pack (char*,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int pptb ;

__attribute__((used)) static int mlxsw_sp_port_pb_prio_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 char pptb_pl[MLXSW_REG_PPTB_LEN];
 int i;

 mlxsw_reg_pptb_pack(pptb_pl, mlxsw_sp_port->local_port);
 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
  mlxsw_reg_pptb_prio_to_buff_pack(pptb_pl, i, 0);
 return mlxsw_reg_write(mlxsw_sp_port->mlxsw_sp->core, MLXSW_REG(pptb),
          pptb_pl);
}
