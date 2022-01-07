
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp_ipip_entry {int ol_dev; int ol_lb; } ;
struct mlxsw_sp {int core; } ;
struct ip_tunnel_parm {int dummy; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RTDP_IPIP_SIP_CHECK_FILTER_IPV4 ;
 unsigned int MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE ;
 unsigned int MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE_KEY ;
 int MLXSW_REG_RTDP_LEN ;
 int MLXSW_REG_RTDP_TYPE_IPIP ;
 int be32_to_cpu (int ) ;
 int mlxsw_reg_rtdp_egress_router_interface_set (char*,int ) ;
 int mlxsw_reg_rtdp_ipip4_pack (char*,int ,int ,unsigned int,int,int ,int ) ;
 int mlxsw_reg_rtdp_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_ipip_lb_rif_index (int ) ;
 int mlxsw_sp_ipip_lb_ul_rif_id (int ) ;
 int mlxsw_sp_ipip_netdev_daddr4 (int ) ;
 struct ip_tunnel_parm mlxsw_sp_ipip_netdev_parms4 (int ) ;
 int mlxsw_sp_ipip_parms4_has_ikey (struct ip_tunnel_parm) ;
 int mlxsw_sp_ipip_parms4_ikey (struct ip_tunnel_parm) ;
 int rtdp ;

__attribute__((used)) static int
mlxsw_sp_ipip_fib_entry_op_gre4_rtdp(struct mlxsw_sp *mlxsw_sp,
         u32 tunnel_index,
         struct mlxsw_sp_ipip_entry *ipip_entry)
{
 u16 rif_index = mlxsw_sp_ipip_lb_rif_index(ipip_entry->ol_lb);
 u16 ul_rif_id = mlxsw_sp_ipip_lb_ul_rif_id(ipip_entry->ol_lb);
 char rtdp_pl[MLXSW_REG_RTDP_LEN];
 struct ip_tunnel_parm parms;
 unsigned int type_check;
 bool has_ikey;
 u32 daddr4;
 u32 ikey;

 parms = mlxsw_sp_ipip_netdev_parms4(ipip_entry->ol_dev);
 has_ikey = mlxsw_sp_ipip_parms4_has_ikey(parms);
 ikey = mlxsw_sp_ipip_parms4_ikey(parms);

 mlxsw_reg_rtdp_pack(rtdp_pl, MLXSW_REG_RTDP_TYPE_IPIP, tunnel_index);
 mlxsw_reg_rtdp_egress_router_interface_set(rtdp_pl, ul_rif_id);

 type_check = has_ikey ?
  MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE_KEY :
  MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE;







 daddr4 = be32_to_cpu(mlxsw_sp_ipip_netdev_daddr4(ipip_entry->ol_dev));
 mlxsw_reg_rtdp_ipip4_pack(rtdp_pl, rif_index,
      MLXSW_REG_RTDP_IPIP_SIP_CHECK_FILTER_IPV4,
      type_check, has_ikey, daddr4, ikey);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rtdp), rtdp_pl);
}
