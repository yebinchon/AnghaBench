
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct mlxsw_sp {int core; } ;
struct TYPE_3__ {int sysctl_ip_fwd_update_priority; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;


 int EIO ;
 int MAX_RIFS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_CORE_RES_VALID (int ,int ) ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_RGCR_LEN ;
 TYPE_2__ init_net ;
 int mlxsw_reg_rgcr_max_router_interfaces_set (char*,int ) ;
 int mlxsw_reg_rgcr_pack (char*,int,int) ;
 int mlxsw_reg_rgcr_usp_set (char*,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int rgcr ;

__attribute__((used)) static int __mlxsw_sp_router_init(struct mlxsw_sp *mlxsw_sp)
{
 bool usp = init_net.ipv4.sysctl_ip_fwd_update_priority;
 char rgcr_pl[MLXSW_REG_RGCR_LEN];
 u64 max_rifs;
 int err;

 if (!MLXSW_CORE_RES_VALID(mlxsw_sp->core, MAX_RIFS))
  return -EIO;
 max_rifs = MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_RIFS);

 mlxsw_reg_rgcr_pack(rgcr_pl, 1, 1);
 mlxsw_reg_rgcr_max_router_interfaces_set(rgcr_pl, max_rifs);
 mlxsw_reg_rgcr_usp_set(rgcr_pl, usp);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rgcr), rgcr_pl);
 if (err)
  return err;
 return 0;
}
