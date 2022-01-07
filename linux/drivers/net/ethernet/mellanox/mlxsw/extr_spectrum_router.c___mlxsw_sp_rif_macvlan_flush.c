
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct mlxsw_sp_rif {int fid; int mlxsw_sp; } ;


 int mlxsw_sp_fid_index (int ) ;
 int mlxsw_sp_rif_fdb_op (int ,int ,int ,int) ;
 int netif_is_macvlan (struct net_device*) ;

__attribute__((used)) static int __mlxsw_sp_rif_macvlan_flush(struct net_device *dev, void *data)
{
 struct mlxsw_sp_rif *rif = data;

 if (!netif_is_macvlan(dev))
  return 0;

 return mlxsw_sp_rif_fdb_op(rif->mlxsw_sp, dev->dev_addr,
       mlxsw_sp_fid_index(rif->fid), 0);
}
