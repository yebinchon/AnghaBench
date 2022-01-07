
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct net_device {int mtu; int dev_addr; } ;
struct mlxsw_sp_rif {void* rif_index; void* vr_id; struct net_device* dev; int mtu; int addr; int neigh_list; int nexthop_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ether_addr_copy (int ,int ) ;
 struct mlxsw_sp_rif* kzalloc (size_t,int ) ;

__attribute__((used)) static struct mlxsw_sp_rif *mlxsw_sp_rif_alloc(size_t rif_size, u16 rif_index,
            u16 vr_id,
            struct net_device *l3_dev)
{
 struct mlxsw_sp_rif *rif;

 rif = kzalloc(rif_size, GFP_KERNEL);
 if (!rif)
  return ((void*)0);

 INIT_LIST_HEAD(&rif->nexthop_list);
 INIT_LIST_HEAD(&rif->neigh_list);
 if (l3_dev) {
  ether_addr_copy(rif->addr, l3_dev->dev_addr);
  rif->mtu = l3_dev->mtu;
  rif->dev = l3_dev;
 }
 rif->vr_id = vr_id;
 rif->rif_index = rif_index;

 return rif;
}
