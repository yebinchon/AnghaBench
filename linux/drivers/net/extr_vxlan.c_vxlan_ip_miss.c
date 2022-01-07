
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union vxlan_addr {int dummy; } vxlan_addr ;
struct vxlan_rdst {int remote_vni; union vxlan_addr remote_ip; } ;
struct vxlan_fdb {int state; } ;
struct vxlan_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int NUD_STALE ;
 int RTM_GETNEIGH ;
 int VXLAN_N_VID ;
 int cpu_to_be32 (int ) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int vxlan_fdb_notify (struct vxlan_dev*,struct vxlan_fdb*,struct vxlan_rdst*,int ,int,int *) ;

__attribute__((used)) static void vxlan_ip_miss(struct net_device *dev, union vxlan_addr *ipa)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);
 struct vxlan_fdb f = {
  .state = NUD_STALE,
 };
 struct vxlan_rdst remote = {
  .remote_ip = *ipa,
  .remote_vni = cpu_to_be32(VXLAN_N_VID),
 };

 vxlan_fdb_notify(vxlan, &f, &remote, RTM_GETNEIGH, 1, ((void*)0));
}
