
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vxlan_sock {int dummy; } ;
struct vxlan_net {int sock_lock; } ;
struct vxlan_dev_node {int hlist; struct vxlan_dev* vxlan; } ;
struct TYPE_2__ {int remote_vni; } ;
struct vxlan_dev {TYPE_1__ default_dst; int net; } ;
typedef int __be32 ;


 int hlist_add_head_rcu (int *,int ) ;
 struct vxlan_net* net_generic (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vni_head (struct vxlan_sock*,int ) ;
 int vxlan_net_id ;

__attribute__((used)) static void vxlan_vs_add_dev(struct vxlan_sock *vs, struct vxlan_dev *vxlan,
        struct vxlan_dev_node *node)
{
 struct vxlan_net *vn = net_generic(vxlan->net, vxlan_net_id);
 __be32 vni = vxlan->default_dst.remote_vni;

 node->vxlan = vxlan;
 spin_lock(&vn->sock_lock);
 hlist_add_head_rcu(&node->hlist, vni_head(vs, vni));
 spin_unlock(&vn->sock_lock);
}
