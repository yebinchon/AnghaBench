
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vxlan_fdb {int eth_addr; int remotes; int vni; int used; int updated; void* flags; void* state; } ;
struct vxlan_dev {int dummy; } ;
typedef void* __u16 ;
typedef int __be32 ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int jiffies ;
 struct vxlan_fdb* kmalloc (int,int ) ;
 int memcpy (int ,int const*,int ) ;

__attribute__((used)) static struct vxlan_fdb *vxlan_fdb_alloc(struct vxlan_dev *vxlan,
      const u8 *mac, __u16 state,
      __be32 src_vni, __u16 ndm_flags)
{
 struct vxlan_fdb *f;

 f = kmalloc(sizeof(*f), GFP_ATOMIC);
 if (!f)
  return ((void*)0);
 f->state = state;
 f->flags = ndm_flags;
 f->updated = f->used = jiffies;
 f->vni = src_vni;
 INIT_LIST_HEAD(&f->remotes);
 memcpy(f->eth_addr, mac, ETH_ALEN);

 return f;
}
