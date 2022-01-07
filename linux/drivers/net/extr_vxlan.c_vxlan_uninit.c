
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vni; } ;
struct vxlan_dev {TYPE_1__ cfg; int gro_cells; } ;
struct net_device {int tstats; } ;


 int free_percpu (int ) ;
 int gro_cells_destroy (int *) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int vxlan_fdb_delete_default (struct vxlan_dev*,int ) ;

__attribute__((used)) static void vxlan_uninit(struct net_device *dev)
{
 struct vxlan_dev *vxlan = netdev_priv(dev);

 gro_cells_destroy(&vxlan->gro_cells);

 vxlan_fdb_delete_default(vxlan, vxlan->cfg.vni);

 free_percpu(dev->tstats);
}
