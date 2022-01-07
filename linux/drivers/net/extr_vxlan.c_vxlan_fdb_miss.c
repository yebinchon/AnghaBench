
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vxlan_rdst {int dummy; } ;
struct vxlan_fdb {int eth_addr; int state; } ;
struct vxlan_dev {int dummy; } ;


 int ETH_ALEN ;
 int NUD_STALE ;
 int RTM_GETNEIGH ;
 int memcpy (int ,int const*,int ) ;
 int vxlan_fdb_notify (struct vxlan_dev*,struct vxlan_fdb*,struct vxlan_rdst*,int ,int,int *) ;

__attribute__((used)) static void vxlan_fdb_miss(struct vxlan_dev *vxlan, const u8 eth_addr[ETH_ALEN])
{
 struct vxlan_fdb f = {
  .state = NUD_STALE,
 };
 struct vxlan_rdst remote = { };

 memcpy(f.eth_addr, eth_addr, ETH_ALEN);

 vxlan_fdb_notify(vxlan, &f, &remote, RTM_GETNEIGH, 1, ((void*)0));
}
