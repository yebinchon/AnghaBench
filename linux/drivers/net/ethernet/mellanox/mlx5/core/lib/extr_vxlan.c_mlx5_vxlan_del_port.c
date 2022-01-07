
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_vxlan_port {int hlist; int refcount; } ;
struct mlx5_vxlan {int sync_lock; int num_ports; int mdev; int lock; } ;


 int ENOENT ;
 int hash_del (int *) ;
 int kfree (struct mlx5_vxlan_port*) ;
 int mlx5_vxlan_core_del_port_cmd (int ,int ) ;
 struct mlx5_vxlan_port* mlx5_vxlan_lookup_port_locked (struct mlx5_vxlan*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int mlx5_vxlan_del_port(struct mlx5_vxlan *vxlan, u16 port)
{
 struct mlx5_vxlan_port *vxlanp;
 bool remove = 0;
 int ret = 0;

 mutex_lock(&vxlan->sync_lock);

 spin_lock_bh(&vxlan->lock);
 vxlanp = mlx5_vxlan_lookup_port_locked(vxlan, port);
 if (!vxlanp) {
  ret = -ENOENT;
  goto out_unlock;
 }

 if (refcount_dec_and_test(&vxlanp->refcount)) {
  hash_del(&vxlanp->hlist);
  remove = 1;
 }

out_unlock:
 spin_unlock_bh(&vxlan->lock);

 if (remove) {
  mlx5_vxlan_core_del_port_cmd(vxlan->mdev, port);
  kfree(vxlanp);
  vxlan->num_ports--;
 }

 mutex_unlock(&vxlan->sync_lock);

 return ret;
}
