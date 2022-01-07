
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vxlan_sock {int dummy; } ;
struct vxlan_dev {int dummy; } ;
struct net {int dummy; } ;
typedef int sa_family_t ;
typedef int __be32 ;
typedef int __be16 ;


 struct vxlan_sock* vxlan_find_sock (struct net*,int ,int ,int ,int) ;
 struct vxlan_dev* vxlan_vs_find_vni (struct vxlan_sock*,int,int ) ;

__attribute__((used)) static struct vxlan_dev *vxlan_find_vni(struct net *net, int ifindex,
     __be32 vni, sa_family_t family,
     __be16 port, u32 flags)
{
 struct vxlan_sock *vs;

 vs = vxlan_find_sock(net, family, port, flags, ifindex);
 if (!vs)
  return ((void*)0);

 return vxlan_vs_find_vni(vs, ifindex, vni);
}
