
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx4_zone_entry {int use_rr; scalar_t__ offset; int bitmap; } ;


 int mlx4_bitmap_free_range (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void __mlx4_free_from_zone(struct mlx4_zone_entry *zone, u32 obj,
      u32 count)
{
 mlx4_bitmap_free_range(zone->bitmap, obj - zone->offset, count, zone->use_rr);
}
