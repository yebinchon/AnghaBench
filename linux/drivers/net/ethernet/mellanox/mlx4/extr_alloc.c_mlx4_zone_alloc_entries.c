
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_zone_entry {int dummy; } ;
struct mlx4_zone_allocator {int lock; } ;


 int __mlx4_alloc_from_zone (struct mlx4_zone_entry*,int,int,int,int*) ;
 struct mlx4_zone_entry* __mlx4_find_zone_by_uid (struct mlx4_zone_allocator*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u32 mlx4_zone_alloc_entries(struct mlx4_zone_allocator *zones, u32 uid, int count,
       int align, u32 skip_mask, u32 *puid)
{
 struct mlx4_zone_entry *zone;
 int res = -1;

 spin_lock(&zones->lock);

 zone = __mlx4_find_zone_by_uid(zones, uid);

 if (((void*)0) == zone)
  goto out;

 res = __mlx4_alloc_from_zone(zone, count, align, skip_mask, puid);

out:
 spin_unlock(&zones->lock);

 return res;
}
