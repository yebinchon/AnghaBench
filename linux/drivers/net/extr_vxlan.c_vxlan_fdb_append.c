
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union vxlan_addr {int dummy; } vxlan_addr ;
struct vxlan_rdst {int offloaded; int list; int remote_ifindex; int remote_vni; int remote_port; union vxlan_addr remote_ip; int dst_cache; } ;
struct vxlan_fdb {int remotes; } ;
typedef int __u32 ;
typedef int __be32 ;
typedef int __be16 ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 scalar_t__ dst_cache_init (int *,int ) ;
 int kfree (struct vxlan_rdst*) ;
 struct vxlan_rdst* kmalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 struct vxlan_rdst* vxlan_fdb_find_rdst (struct vxlan_fdb*,union vxlan_addr*,int ,int ,int ) ;

__attribute__((used)) static int vxlan_fdb_append(struct vxlan_fdb *f,
       union vxlan_addr *ip, __be16 port, __be32 vni,
       __u32 ifindex, struct vxlan_rdst **rdp)
{
 struct vxlan_rdst *rd;

 rd = vxlan_fdb_find_rdst(f, ip, port, vni, ifindex);
 if (rd)
  return 0;

 rd = kmalloc(sizeof(*rd), GFP_ATOMIC);
 if (rd == ((void*)0))
  return -ENOBUFS;

 if (dst_cache_init(&rd->dst_cache, GFP_ATOMIC)) {
  kfree(rd);
  return -ENOBUFS;
 }

 rd->remote_ip = *ip;
 rd->remote_port = port;
 rd->offloaded = 0;
 rd->remote_vni = vni;
 rd->remote_ifindex = ifindex;

 list_add_tail_rcu(&rd->list, &f->remotes);

 *rdp = rd;
 return 1;
}
