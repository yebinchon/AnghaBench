
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int EINVAL ;
 scalar_t__ ETH_HLEN ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PMTU_LEN ;
 scalar_t__ MLXSW_TXHDR_LEN ;
 int mlxsw_reg_pmtu_max_mtu_get (char*) ;
 int mlxsw_reg_pmtu_pack (char*,int ,int) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int pmtu ;

__attribute__((used)) static int mlxsw_sp_port_mtu_set(struct mlxsw_sp_port *mlxsw_sp_port, u16 mtu)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char pmtu_pl[MLXSW_REG_PMTU_LEN];
 int max_mtu;
 int err;

 mtu += MLXSW_TXHDR_LEN + ETH_HLEN;
 mlxsw_reg_pmtu_pack(pmtu_pl, mlxsw_sp_port->local_port, 0);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(pmtu), pmtu_pl);
 if (err)
  return err;
 max_mtu = mlxsw_reg_pmtu_max_mtu_get(pmtu_pl);

 if (mtu > max_mtu)
  return -EINVAL;

 mlxsw_reg_pmtu_pack(pmtu_pl, mlxsw_sp_port->local_port, mtu);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pmtu), pmtu_pl);
}
