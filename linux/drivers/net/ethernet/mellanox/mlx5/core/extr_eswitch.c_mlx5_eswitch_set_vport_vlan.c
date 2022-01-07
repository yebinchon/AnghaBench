
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct mlx5_eswitch {int state_lock; } ;


 int SET_VLAN_INSERT ;
 int SET_VLAN_STRIP ;
 int __mlx5_eswitch_set_vport_vlan (struct mlx5_eswitch*,scalar_t__,scalar_t__,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_eswitch_set_vport_vlan(struct mlx5_eswitch *esw,
    u16 vport, u16 vlan, u8 qos)
{
 u8 set_flags = 0;
 int err;

 if (vlan || qos)
  set_flags = SET_VLAN_STRIP | SET_VLAN_INSERT;

 mutex_lock(&esw->state_lock);
 err = __mlx5_eswitch_set_vport_vlan(esw, vport, vlan, qos, set_flags);
 mutex_unlock(&esw->state_lock);

 return err;
}
