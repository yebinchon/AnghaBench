
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct mlx4_vlan_table {int* is_dup; int mutex; int total; scalar_t__* entries; scalar_t__* refs; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {struct mlx4_vlan_table vlan_table; } ;


 int MLX4_VLAN_REGULAR ;
 int SINGLE_DEPTH_NESTING ;
 int mlx4_dbg (struct mlx4_dev*,char*,scalar_t__,int) ;
 scalar_t__ mlx4_find_cached_vlan (struct mlx4_dev*,size_t,size_t,int*) ;
 int mlx4_is_mf_bonded (struct mlx4_dev*) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 scalar_t__ mlx4_set_port_vlan_table (struct mlx4_dev*,size_t,scalar_t__*) ;
 int mlx4_warn (struct mlx4_dev*,char*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

void __mlx4_unregister_vlan(struct mlx4_dev *dev, u8 port, u16 vlan)
{
 struct mlx4_vlan_table *table = &mlx4_priv(dev)->port[port].vlan_table;
 int index;
 bool dup = mlx4_is_mf_bonded(dev);
 u8 dup_port = (port == 1) ? 2 : 1;
 struct mlx4_vlan_table *dup_table = &mlx4_priv(dev)->port[dup_port].vlan_table;

 if (dup) {
  if (port == 1) {
   mutex_lock(&table->mutex);
   mutex_lock_nested(&dup_table->mutex, SINGLE_DEPTH_NESTING);
  } else {
   mutex_lock(&dup_table->mutex);
   mutex_lock_nested(&table->mutex, SINGLE_DEPTH_NESTING);
  }
 } else {
  mutex_lock(&table->mutex);
 }

 if (mlx4_find_cached_vlan(dev, port, vlan, &index)) {
  mlx4_warn(dev, "vlan 0x%x is not in the vlan table\n", vlan);
  goto out;
 }

 if (index < MLX4_VLAN_REGULAR) {
  mlx4_warn(dev, "Trying to free special vlan index %d\n", index);
  goto out;
 }

 if (--table->refs[index] || table->is_dup[index]) {
  mlx4_dbg(dev, "Have %d more references for index %d, no need to modify vlan table\n",
    table->refs[index], index);
  if (!table->refs[index])
   dup_table->is_dup[index] = 0;
  goto out;
 }
 table->entries[index] = 0;
 if (mlx4_set_port_vlan_table(dev, port, table->entries))
  mlx4_warn(dev, "Fail to set vlan in port %d during unregister\n", port);
 --table->total;
 if (dup) {
  dup_table->is_dup[index] = 0;
  if (dup_table->refs[index])
   goto out;
  dup_table->entries[index] = 0;
  if (mlx4_set_port_vlan_table(dev, dup_port, dup_table->entries))
   mlx4_warn(dev, "Fail to set vlan in duplicate port %d during unregister\n", dup_port);
  --dup_table->total;
 }
out:
 if (dup) {
  if (port == 2) {
   mutex_unlock(&table->mutex);
   mutex_unlock(&dup_table->mutex);
  } else {
   mutex_unlock(&dup_table->mutex);
   mutex_unlock(&table->mutex);
  }
 } else {
  mutex_unlock(&table->mutex);
 }
}
