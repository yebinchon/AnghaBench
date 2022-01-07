
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_net {struct hlist_head* sock_list; } ;
struct net {int dummy; } ;
struct hlist_head {int dummy; } ;
typedef int __be16 ;


 int PORT_HASH_BITS ;
 size_t hash_32 (int ,int ) ;
 struct vxlan_net* net_generic (struct net*,int ) ;
 int ntohs (int ) ;
 int vxlan_net_id ;

__attribute__((used)) static inline struct hlist_head *vs_head(struct net *net, __be16 port)
{
 struct vxlan_net *vn = net_generic(net, vxlan_net_id);

 return &vn->sock_list[hash_32(ntohs(port), PORT_HASH_BITS)];
}
