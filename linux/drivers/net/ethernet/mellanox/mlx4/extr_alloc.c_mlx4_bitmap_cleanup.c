
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_bitmap {int table; } ;


 int bitmap_free (int ) ;

void mlx4_bitmap_cleanup(struct mlx4_bitmap *bitmap)
{
 bitmap_free(bitmap->table);
}
