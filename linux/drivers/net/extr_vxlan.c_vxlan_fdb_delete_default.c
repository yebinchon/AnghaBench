
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int * hash_lock; } ;
typedef int __be32 ;


 struct vxlan_fdb* __vxlan_find_mac (struct vxlan_dev*,int ,int ) ;
 int all_zeros_mac ;
 size_t fdb_head_index (struct vxlan_dev*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vxlan_fdb_destroy (struct vxlan_dev*,struct vxlan_fdb*,int,int) ;

__attribute__((used)) static void vxlan_fdb_delete_default(struct vxlan_dev *vxlan, __be32 vni)
{
 struct vxlan_fdb *f;
 u32 hash_index = fdb_head_index(vxlan, all_zeros_mac, vni);

 spin_lock_bh(&vxlan->hash_lock[hash_index]);
 f = __vxlan_find_mac(vxlan, all_zeros_mac, vni);
 if (f)
  vxlan_fdb_destroy(vxlan, f, 1, 1);
 spin_unlock_bh(&vxlan->hash_lock[hash_index]);
}
