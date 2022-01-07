
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MPSC_LEN ;
 int mlxsw_reg_mpsc_pack (char*,int ,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mpsc ;

__attribute__((used)) static int mlxsw_sp_port_sample_set(struct mlxsw_sp_port *mlxsw_sp_port,
        bool enable, u32 rate)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char mpsc_pl[MLXSW_REG_MPSC_LEN];

 mlxsw_reg_mpsc_pack(mpsc_pl, mlxsw_sp_port->local_port, enable, rate);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(mpsc), mpsc_pl);
}
