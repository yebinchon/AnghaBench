
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_vxlan_port {int hlist; int refcount; int udp_port; } ;
struct mlx5_vxlan {scalar_t__ num_ports; int sync_lock; int mdev; int lock; int htable; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int hash_add (int ,int *,int ) ;
 struct mlx5_vxlan_port* kzalloc (int,int ) ;
 int mlx5_core_info (int ,char*,int ,scalar_t__) ;
 int mlx5_vxlan_core_add_port_cmd (int ,int ) ;
 int mlx5_vxlan_core_del_port_cmd (int ,int ) ;
 struct mlx5_vxlan_port* mlx5_vxlan_lookup_port (struct mlx5_vxlan*,int ) ;
 scalar_t__ mlx5_vxlan_max_udp_ports (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_inc (int *) ;
 int refcount_set (int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int mlx5_vxlan_add_port(struct mlx5_vxlan *vxlan, u16 port)
{
 struct mlx5_vxlan_port *vxlanp;
 int ret = -ENOSPC;

 vxlanp = mlx5_vxlan_lookup_port(vxlan, port);
 if (vxlanp) {
  refcount_inc(&vxlanp->refcount);
  return 0;
 }

 mutex_lock(&vxlan->sync_lock);
 if (vxlan->num_ports >= mlx5_vxlan_max_udp_ports(vxlan->mdev)) {
  mlx5_core_info(vxlan->mdev,
          "UDP port (%d) not offloaded, max number of UDP ports (%d) are already offloaded\n",
          port, mlx5_vxlan_max_udp_ports(vxlan->mdev));
  ret = -ENOSPC;
  goto unlock;
 }

 ret = mlx5_vxlan_core_add_port_cmd(vxlan->mdev, port);
 if (ret)
  goto unlock;

 vxlanp = kzalloc(sizeof(*vxlanp), GFP_KERNEL);
 if (!vxlanp) {
  ret = -ENOMEM;
  goto err_delete_port;
 }

 vxlanp->udp_port = port;
 refcount_set(&vxlanp->refcount, 1);

 spin_lock_bh(&vxlan->lock);
 hash_add(vxlan->htable, &vxlanp->hlist, port);
 spin_unlock_bh(&vxlan->lock);

 vxlan->num_ports++;
 mutex_unlock(&vxlan->sync_lock);
 return 0;

err_delete_port:
 mlx5_vxlan_core_del_port_cmd(vxlan->mdev, port);

unlock:
 mutex_unlock(&vxlan->sync_lock);
 return ret;
}
