
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; } ;
struct TYPE_2__ {int mtu; } ;
struct mlxsw_sp_rif_ipip_lb {TYPE_1__ common; int ul_rif_id; int ul_vr_id; } ;
struct mlxsw_sp_ipip_entry {struct mlxsw_sp_rif_ipip_lb* ol_lb; } ;
struct mlxsw_sp {int dummy; } ;


 struct mlxsw_sp_ipip_entry* mlxsw_sp_ipip_entry_find_by_ol_dev (struct mlxsw_sp*,struct net_device*) ;
 int mlxsw_sp_rif_ipip_lb_op (struct mlxsw_sp_rif_ipip_lb*,int ,int ,int) ;

__attribute__((used)) static int mlxsw_sp_netdevice_ipip_ol_update_mtu(struct mlxsw_sp *mlxsw_sp,
       struct net_device *ol_dev)
{
 struct mlxsw_sp_ipip_entry *ipip_entry;
 struct mlxsw_sp_rif_ipip_lb *lb_rif;
 int err = 0;

 ipip_entry = mlxsw_sp_ipip_entry_find_by_ol_dev(mlxsw_sp, ol_dev);
 if (ipip_entry) {
  lb_rif = ipip_entry->ol_lb;
  err = mlxsw_sp_rif_ipip_lb_op(lb_rif, lb_rif->ul_vr_id,
           lb_rif->ul_rif_id, 1);
  if (err)
   goto out;
  lb_rif->common.mtu = ol_dev->mtu;
 }

out:
 return err;
}
