
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_vlan_table {scalar_t__* entries; int* is_dup; int mutex; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {struct mlx4_vlan_table vlan_table; } ;


 int EINVAL ;
 int MLX4_MAX_VLAN_NUM ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_set_port_vlan_table (struct mlx4_dev*,int,scalar_t__*) ;
 int mlx4_warn (struct mlx4_dev*,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx4_bond_vlan_table(struct mlx4_dev *dev)
{
 struct mlx4_vlan_table *t1 = &mlx4_priv(dev)->port[1].vlan_table;
 struct mlx4_vlan_table *t2 = &mlx4_priv(dev)->port[2].vlan_table;
 int ret = 0;
 int i;
 bool update1 = 0;
 bool update2 = 0;

 mutex_lock(&t1->mutex);
 mutex_lock(&t2->mutex);
 for (i = 0; i < MLX4_MAX_VLAN_NUM; i++) {
  if ((t1->entries[i] != t2->entries[i]) &&
      t1->entries[i] && t2->entries[i]) {
   mlx4_warn(dev, "can't duplicate entry %d in vlan table\n", i);
   ret = -EINVAL;
   goto unlock;
  }
 }

 for (i = 0; i < MLX4_MAX_VLAN_NUM; i++) {
  if (t1->entries[i] && !t2->entries[i]) {
   t2->entries[i] = t1->entries[i];
   t2->is_dup[i] = 1;
   update2 = 1;
  } else if (!t1->entries[i] && t2->entries[i]) {
   t1->entries[i] = t2->entries[i];
   t1->is_dup[i] = 1;
   update1 = 1;
  } else if (t1->entries[i] && t2->entries[i]) {
   t1->is_dup[i] = 1;
   t2->is_dup[i] = 1;
  }
 }

 if (update1) {
  ret = mlx4_set_port_vlan_table(dev, 1, t1->entries);
  if (ret)
   mlx4_warn(dev, "failed to set VLAN table for port 1 (%d)\n", ret);
 }
 if (!ret && update2) {
  ret = mlx4_set_port_vlan_table(dev, 2, t2->entries);
  if (ret)
   mlx4_warn(dev, "failed to set VLAN table for port 2 (%d)\n", ret);
 }

 if (ret)
  mlx4_warn(dev, "failed to create mirror VLAN tables\n");
unlock:
 mutex_unlock(&t2->mutex);
 mutex_unlock(&t1->mutex);
 return ret;
}
