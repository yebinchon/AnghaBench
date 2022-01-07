
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_zone_entry {struct mlx4_bitmap* bitmap; } ;
struct mlx4_zone_allocator {int lock; } ;
struct mlx4_bitmap {int dummy; } ;


 struct mlx4_zone_entry* __mlx4_find_zone_by_uid (struct mlx4_zone_allocator*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct mlx4_bitmap *mlx4_zone_get_bitmap(struct mlx4_zone_allocator *zones, u32 uid)
{
 struct mlx4_zone_entry *zone;
 struct mlx4_bitmap *bitmap;

 spin_lock(&zones->lock);

 zone = __mlx4_find_zone_by_uid(zones, uid);

 bitmap = zone == ((void*)0) ? ((void*)0) : zone->bitmap;

 spin_unlock(&zones->lock);

 return bitmap;
}
