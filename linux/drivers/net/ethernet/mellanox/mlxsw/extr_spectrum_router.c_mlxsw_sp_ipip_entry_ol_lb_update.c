
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_rif_ipip_lb {int common; } ;
struct mlxsw_sp_ipip_entry {struct mlxsw_sp_rif_ipip_lb* ol_lb; int ol_dev; int ipipt; } ;
struct mlxsw_sp {int dummy; } ;


 scalar_t__ IS_ERR (struct mlxsw_sp_rif_ipip_lb*) ;
 int PTR_ERR (struct mlxsw_sp_rif_ipip_lb*) ;
 struct mlxsw_sp_rif_ipip_lb* mlxsw_sp_ipip_ol_ipip_lb_create (struct mlxsw_sp*,int ,int ,struct netlink_ext_ack*) ;
 int mlxsw_sp_nexthop_rif_migrate (struct mlxsw_sp*,int *,int *) ;
 int mlxsw_sp_rif_destroy (int *) ;

__attribute__((used)) static int
mlxsw_sp_ipip_entry_ol_lb_update(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_ipip_entry *ipip_entry,
     bool keep_encap,
     struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_rif_ipip_lb *old_lb_rif = ipip_entry->ol_lb;
 struct mlxsw_sp_rif_ipip_lb *new_lb_rif;

 new_lb_rif = mlxsw_sp_ipip_ol_ipip_lb_create(mlxsw_sp,
           ipip_entry->ipipt,
           ipip_entry->ol_dev,
           extack);
 if (IS_ERR(new_lb_rif))
  return PTR_ERR(new_lb_rif);
 ipip_entry->ol_lb = new_lb_rif;

 if (keep_encap)
  mlxsw_sp_nexthop_rif_migrate(mlxsw_sp, &old_lb_rif->common,
          &new_lb_rif->common);

 mlxsw_sp_rif_destroy(&old_lb_rif->common);

 return 0;
}
