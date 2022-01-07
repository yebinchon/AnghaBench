
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp_ipip_entry {int ol_dev; int ol_lb; } ;
struct mlxsw_sp {int core; } ;
typedef int __be32 ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RATR_LEN ;
 int MLXSW_REG_RATR_OP_WRITE_WRITE_ENTRY ;
 int MLXSW_REG_RATR_TYPE_IPIP ;
 int be32_to_cpu (int ) ;
 int mlxsw_reg_ratr_ipip4_entry_pack (char*,int ) ;
 int mlxsw_reg_ratr_pack (char*,int ,int,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_ipip_lb_rif_index (int ) ;
 int mlxsw_sp_ipip_netdev_daddr4 (int ) ;
 int ratr ;

__attribute__((used)) static int
mlxsw_sp_ipip_nexthop_update_gre4(struct mlxsw_sp *mlxsw_sp, u32 adj_index,
      struct mlxsw_sp_ipip_entry *ipip_entry)
{
 u16 rif_index = mlxsw_sp_ipip_lb_rif_index(ipip_entry->ol_lb);
 __be32 daddr4 = mlxsw_sp_ipip_netdev_daddr4(ipip_entry->ol_dev);
 char ratr_pl[MLXSW_REG_RATR_LEN];

 mlxsw_reg_ratr_pack(ratr_pl, MLXSW_REG_RATR_OP_WRITE_WRITE_ENTRY,
       1, MLXSW_REG_RATR_TYPE_IPIP,
       adj_index, rif_index);
 mlxsw_reg_ratr_ipip4_entry_pack(ratr_pl, be32_to_cpu(daddr4));

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ratr), ratr_pl);
}
