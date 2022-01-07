
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_notifier_fdb_info {char const* addr; int info; scalar_t__ vid; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int dev; } ;


 int SWITCHDEV_FDB_DEL_TO_BRIDGE ;
 struct net_device* br_fdb_find_port (int ,char const*,int ) ;
 int call_switchdev_notifiers (int ,struct net_device*,int *,int *) ;

__attribute__((used)) static void mlxsw_sp_rif_fid_fdb_del(struct mlxsw_sp_rif *rif, const char *mac)
{
 struct switchdev_notifier_fdb_info info;
 struct net_device *dev;

 dev = br_fdb_find_port(rif->dev, mac, 0);
 if (!dev)
  return;

 info.addr = mac;
 info.vid = 0;
 call_switchdev_notifiers(SWITCHDEV_FDB_DEL_TO_BRIDGE, dev, &info.info,
     ((void*)0));
}
