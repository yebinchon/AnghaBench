
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct ip_tunnel_parm {scalar_t__ link; } ;
struct mlxsw_sp_ipip_entry {struct ip_tunnel_parm parms4; int ol_dev; } ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_L3_PROTO_IPV4 ;
 int __mlxsw_sp_ipip_entry_update_tunnel (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*,int,int,int,struct netlink_ext_ack*) ;
 scalar_t__ mlxsw_sp_ipip_demote_tunnel_by_saddr (struct mlxsw_sp*,int ,union mlxsw_sp_l3addr,int ,struct mlxsw_sp_ipip_entry*) ;
 int mlxsw_sp_ipip_dev_ul_tb_id (int ) ;
 int mlxsw_sp_ipip_entry_demote_tunnel (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ;
 struct ip_tunnel_parm mlxsw_sp_ipip_netdev_parms4 (int ) ;
 union mlxsw_sp_l3addr mlxsw_sp_ipip_parms4_daddr (struct ip_tunnel_parm) ;
 scalar_t__ mlxsw_sp_ipip_parms4_ikey (struct ip_tunnel_parm) ;
 scalar_t__ mlxsw_sp_ipip_parms4_okey (struct ip_tunnel_parm) ;
 union mlxsw_sp_l3addr mlxsw_sp_ipip_parms4_saddr (struct ip_tunnel_parm) ;
 int mlxsw_sp_l3addr_eq (union mlxsw_sp_l3addr*,union mlxsw_sp_l3addr*) ;

__attribute__((used)) static int
mlxsw_sp_ipip_ol_netdev_change_gre4(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_ipip_entry *ipip_entry,
        struct netlink_ext_ack *extack)
{
 union mlxsw_sp_l3addr old_saddr, new_saddr;
 union mlxsw_sp_l3addr old_daddr, new_daddr;
 struct ip_tunnel_parm new_parms;
 bool update_tunnel = 0;
 bool update_decap = 0;
 bool update_nhs = 0;
 int err = 0;

 new_parms = mlxsw_sp_ipip_netdev_parms4(ipip_entry->ol_dev);

 new_saddr = mlxsw_sp_ipip_parms4_saddr(new_parms);
 old_saddr = mlxsw_sp_ipip_parms4_saddr(ipip_entry->parms4);
 new_daddr = mlxsw_sp_ipip_parms4_daddr(new_parms);
 old_daddr = mlxsw_sp_ipip_parms4_daddr(ipip_entry->parms4);

 if (!mlxsw_sp_l3addr_eq(&new_saddr, &old_saddr)) {
  u16 ul_tb_id = mlxsw_sp_ipip_dev_ul_tb_id(ipip_entry->ol_dev);




  if (mlxsw_sp_ipip_demote_tunnel_by_saddr(mlxsw_sp,
        MLXSW_SP_L3_PROTO_IPV4,
        new_saddr, ul_tb_id,
        ipip_entry)) {
   mlxsw_sp_ipip_entry_demote_tunnel(mlxsw_sp, ipip_entry);
   return 0;
  }

  update_tunnel = 1;
 } else if ((mlxsw_sp_ipip_parms4_okey(ipip_entry->parms4) !=
      mlxsw_sp_ipip_parms4_okey(new_parms)) ||
     ipip_entry->parms4.link != new_parms.link) {
  update_tunnel = 1;
 } else if (!mlxsw_sp_l3addr_eq(&new_daddr, &old_daddr)) {
  update_nhs = 1;
 } else if (mlxsw_sp_ipip_parms4_ikey(ipip_entry->parms4) !=
     mlxsw_sp_ipip_parms4_ikey(new_parms)) {
  update_decap = 1;
 }

 if (update_tunnel)
  err = __mlxsw_sp_ipip_entry_update_tunnel(mlxsw_sp, ipip_entry,
         1, 1, 1,
         extack);
 else if (update_nhs)
  err = __mlxsw_sp_ipip_entry_update_tunnel(mlxsw_sp, ipip_entry,
         0, 0, 1,
         extack);
 else if (update_decap)
  err = __mlxsw_sp_ipip_entry_update_tunnel(mlxsw_sp, ipip_entry,
         0, 0, 0,
         extack);

 ipip_entry->parms4 = new_parms;
 return err;
}
