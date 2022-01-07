
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct mlx4_mac_table {int* refs; int* is_dup; scalar_t__ total; scalar_t__ max; int mutex; void** entries; } ;
struct mlx4_port_info {struct mlx4_mac_table mac_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_port_info* port; } ;


 int ENOSPC ;
 int MLX4_MAC_MASK ;
 int MLX4_MAC_VALID ;
 int MLX4_MAX_MAC_NUM ;
 int SINGLE_DEPTH_NESTING ;
 int be64_to_cpu (void*) ;
 void* cpu_to_be64 (int) ;
 int mlx4_dbg (struct mlx4_dev*,char*,int,...) ;
 int mlx4_err (struct mlx4_dev*,char*,unsigned long long) ;
 int mlx4_is_mf_bonded (struct mlx4_dev*) ;
 int mlx4_need_mf_bond (struct mlx4_dev*) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_set_port_mac_table (struct mlx4_dev*,size_t,void**) ;
 int mlx4_warn (struct mlx4_dev*,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int __mlx4_register_mac(struct mlx4_dev *dev, u8 port, u64 mac)
{
 struct mlx4_port_info *info = &mlx4_priv(dev)->port[port];
 struct mlx4_mac_table *table = &info->mac_table;
 int i, err = 0;
 int free = -1;
 int free_for_dup = -1;
 bool dup = mlx4_is_mf_bonded(dev);
 u8 dup_port = (port == 1) ? 2 : 1;
 struct mlx4_mac_table *dup_table = &mlx4_priv(dev)->port[dup_port].mac_table;
 bool need_mf_bond = mlx4_need_mf_bond(dev);
 bool can_mf_bond = 1;

 mlx4_dbg(dev, "Registering MAC: 0x%llx for port %d %s duplicate\n",
   (unsigned long long)mac, port,
   dup ? "with" : "without");

 if (need_mf_bond) {
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

 if (need_mf_bond) {
  int index_at_port = -1;
  int index_at_dup_port = -1;

  for (i = 0; i < MLX4_MAX_MAC_NUM; i++) {
   if (((MLX4_MAC_MASK & mac) == (MLX4_MAC_MASK & be64_to_cpu(table->entries[i]))))
    index_at_port = i;
   if (((MLX4_MAC_MASK & mac) == (MLX4_MAC_MASK & be64_to_cpu(dup_table->entries[i]))))
    index_at_dup_port = i;
  }


  if ((index_at_port != index_at_dup_port) &&
      (index_at_port >= 0) &&
      (index_at_dup_port >= 0))
   can_mf_bond = 0;




  if (index_at_port >= 0 && index_at_dup_port < 0 &&
      dup_table->refs[index_at_port]) {
   can_mf_bond = 0;
  }






  if (index_at_dup_port >= 0) {
   if (!table->refs[index_at_dup_port] ||
       ((MLX4_MAC_MASK & mac) == (MLX4_MAC_MASK & be64_to_cpu(table->entries[index_at_dup_port]))))
    free_for_dup = index_at_dup_port;
   else
    can_mf_bond = 0;
  }
 }

 for (i = 0; i < MLX4_MAX_MAC_NUM; i++) {
  if (!table->refs[i]) {
   if (free < 0)
    free = i;
   if (free_for_dup < 0 && need_mf_bond && can_mf_bond) {
    if (!dup_table->refs[i])
     free_for_dup = i;
   }
   continue;
  }

  if ((MLX4_MAC_MASK & mac) ==
       (MLX4_MAC_MASK & be64_to_cpu(table->entries[i]))) {

   err = i;
   ++table->refs[i];
   if (dup) {
    u64 dup_mac = MLX4_MAC_MASK & be64_to_cpu(dup_table->entries[i]);

    if (dup_mac != mac || !dup_table->is_dup[i]) {
     mlx4_warn(dev, "register mac: expect duplicate mac 0x%llx on port %d index %d\n",
        mac, dup_port, i);
    }
   }
   goto out;
  }
 }

 if (need_mf_bond && (free_for_dup < 0)) {
  if (dup) {
   mlx4_warn(dev, "Fail to allocate duplicate MAC table entry\n");
   mlx4_warn(dev, "High Availability for virtual functions may not work as expected\n");
   dup = 0;
  }
  can_mf_bond = 0;
 }

 if (need_mf_bond && can_mf_bond)
  free = free_for_dup;

 mlx4_dbg(dev, "Free MAC index is %d\n", free);

 if (table->total == table->max) {

  err = -ENOSPC;
  goto out;
 }


 table->entries[free] = cpu_to_be64(mac | MLX4_MAC_VALID);

 err = mlx4_set_port_mac_table(dev, port, table->entries);
 if (unlikely(err)) {
  mlx4_err(dev, "Failed adding MAC: 0x%llx\n",
    (unsigned long long) mac);
  table->entries[free] = 0;
  goto out;
 }
 table->refs[free] = 1;
 table->is_dup[free] = 0;
 ++table->total;
 if (dup) {
  dup_table->refs[free] = 0;
  dup_table->is_dup[free] = 1;
  dup_table->entries[free] = cpu_to_be64(mac | MLX4_MAC_VALID);

  err = mlx4_set_port_mac_table(dev, dup_port, dup_table->entries);
  if (unlikely(err)) {
   mlx4_warn(dev, "Failed adding duplicate mac: 0x%llx\n", mac);
   dup_table->is_dup[free] = 0;
   dup_table->entries[free] = 0;
   goto out;
  }
  ++dup_table->total;
 }
 err = free;
out:
 if (need_mf_bond) {
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
 return err;
}
