
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_vxlan_port {int dummy; } ;
struct mlx5_vxlan {int lock; } ;


 int mlx5_vxlan_allowed (struct mlx5_vxlan*) ;
 struct mlx5_vxlan_port* mlx5_vxlan_lookup_port_locked (struct mlx5_vxlan*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct mlx5_vxlan_port *mlx5_vxlan_lookup_port(struct mlx5_vxlan *vxlan, u16 port)
{
 struct mlx5_vxlan_port *vxlanp;

 if (!mlx5_vxlan_allowed(vxlan))
  return ((void*)0);

 spin_lock_bh(&vxlan->lock);
 vxlanp = mlx5_vxlan_lookup_port_locked(vxlan, port);
 spin_unlock_bh(&vxlan->lock);

 return vxlanp;
}
