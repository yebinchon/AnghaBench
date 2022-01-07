
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_zone_entry {int dummy; } ;
struct mlx4_zone_allocator {int lock; } ;


 struct mlx4_zone_entry* __mlx4_find_zone_by_uid (struct mlx4_zone_allocator*,int ) ;
 int __mlx4_zone_remove_one_entry (struct mlx4_zone_entry*) ;
 int kfree (struct mlx4_zone_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int mlx4_zone_remove_one(struct mlx4_zone_allocator *zones, u32 uid)
{
 struct mlx4_zone_entry *zone;
 int res = 0;

 spin_lock(&zones->lock);

 zone = __mlx4_find_zone_by_uid(zones, uid);

 if (((void*)0) == zone) {
  res = -1;
  goto out;
 }

 __mlx4_zone_remove_one_entry(zone);

out:
 spin_unlock(&zones->lock);
 kfree(zone);

 return res;
}
