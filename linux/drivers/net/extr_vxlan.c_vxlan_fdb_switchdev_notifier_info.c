
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlan_rdst {int offloaded; int remote_ifindex; int remote_vni; int remote_port; int remote_ip; } ;
struct vxlan_fdb {int flags; int vni; int eth_addr; } ;
struct vxlan_dev {int dev; } ;
struct TYPE_2__ {struct netlink_ext_ack* extack; int dev; } ;
struct switchdev_notifier_vxlan_fdb_info {int added_by_user; int offloaded; int vni; int eth_addr; int remote_ifindex; int remote_vni; int remote_port; int remote_ip; TYPE_1__ info; } ;
struct netlink_ext_ack {int dummy; } ;


 int ETH_ALEN ;
 int NTF_VXLAN_ADDED_BY_USER ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void vxlan_fdb_switchdev_notifier_info(const struct vxlan_dev *vxlan,
       const struct vxlan_fdb *fdb,
       const struct vxlan_rdst *rd,
       struct netlink_ext_ack *extack,
       struct switchdev_notifier_vxlan_fdb_info *fdb_info)
{
 fdb_info->info.dev = vxlan->dev;
 fdb_info->info.extack = extack;
 fdb_info->remote_ip = rd->remote_ip;
 fdb_info->remote_port = rd->remote_port;
 fdb_info->remote_vni = rd->remote_vni;
 fdb_info->remote_ifindex = rd->remote_ifindex;
 memcpy(fdb_info->eth_addr, fdb->eth_addr, ETH_ALEN);
 fdb_info->vni = fdb->vni;
 fdb_info->offloaded = rd->offloaded;
 fdb_info->added_by_user = fdb->flags & NTF_VXLAN_ADDED_BY_USER;
}
