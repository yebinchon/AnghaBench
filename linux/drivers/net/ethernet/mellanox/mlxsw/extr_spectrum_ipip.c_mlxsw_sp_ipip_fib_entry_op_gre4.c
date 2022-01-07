
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp_ipip_entry {int ol_dev; int ol_lb; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;
typedef int __be32 ;
struct TYPE_2__ {int addr4; } ;


 int MLXSW_SP_L3_PROTO_IPV4 ;
 int be32_to_cpu (int ) ;
 int mlxsw_sp_ipip_fib_entry_op_gre4_ralue (struct mlxsw_sp*,int ,int,int ,int,int ) ;
 int mlxsw_sp_ipip_fib_entry_op_gre4_rtdp (struct mlxsw_sp*,int ,struct mlxsw_sp_ipip_entry*) ;
 int mlxsw_sp_ipip_lb_ul_vr_id (int ) ;
 TYPE_1__ mlxsw_sp_ipip_netdev_saddr (int ,int ) ;

__attribute__((used)) static int mlxsw_sp_ipip_fib_entry_op_gre4(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_ipip_entry *ipip_entry,
     enum mlxsw_reg_ralue_op op,
     u32 tunnel_index)
{
 u16 ul_vr_id = mlxsw_sp_ipip_lb_ul_vr_id(ipip_entry->ol_lb);
 __be32 dip;
 int err;

 err = mlxsw_sp_ipip_fib_entry_op_gre4_rtdp(mlxsw_sp, tunnel_index,
         ipip_entry);
 if (err)
  return err;

 dip = mlxsw_sp_ipip_netdev_saddr(MLXSW_SP_L3_PROTO_IPV4,
      ipip_entry->ol_dev).addr4;
 return mlxsw_sp_ipip_fib_entry_op_gre4_ralue(mlxsw_sp, be32_to_cpu(dip),
           32, ul_vr_id, op,
           tunnel_index);
}
