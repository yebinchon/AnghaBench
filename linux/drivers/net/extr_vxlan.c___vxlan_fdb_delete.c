
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union vxlan_addr {int dummy; } vxlan_addr ;
typedef int u32 ;
struct vxlan_rdst {int dummy; } ;
struct vxlan_fdb {int remotes; } ;
struct vxlan_dev {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 int ENOENT ;
 int list_is_singular (int *) ;
 int vxlan_addr_any (union vxlan_addr*) ;
 int vxlan_fdb_destroy (struct vxlan_dev*,struct vxlan_fdb*,int,int) ;
 int vxlan_fdb_dst_destroy (struct vxlan_dev*,struct vxlan_fdb*,struct vxlan_rdst*,int) ;
 struct vxlan_rdst* vxlan_fdb_find_rdst (struct vxlan_fdb*,union vxlan_addr*,int ,int ,int ) ;
 struct vxlan_fdb* vxlan_find_mac (struct vxlan_dev*,unsigned char const*,int ) ;

__attribute__((used)) static int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
         const unsigned char *addr, union vxlan_addr ip,
         __be16 port, __be32 src_vni, __be32 vni,
         u32 ifindex, bool swdev_notify)
{
 struct vxlan_fdb *f;
 struct vxlan_rdst *rd = ((void*)0);
 int err = -ENOENT;

 f = vxlan_find_mac(vxlan, addr, src_vni);
 if (!f)
  return err;

 if (!vxlan_addr_any(&ip)) {
  rd = vxlan_fdb_find_rdst(f, &ip, port, vni, ifindex);
  if (!rd)
   goto out;
 }




 if (rd && !list_is_singular(&f->remotes)) {
  vxlan_fdb_dst_destroy(vxlan, f, rd, swdev_notify);
  goto out;
 }

 vxlan_fdb_destroy(vxlan, f, 1, swdev_notify);

out:
 return 0;
}
