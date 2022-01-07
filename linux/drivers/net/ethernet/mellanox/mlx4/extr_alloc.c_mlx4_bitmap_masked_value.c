
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_bitmap {int max; int reserved_top; } ;



__attribute__((used)) static u32 mlx4_bitmap_masked_value(struct mlx4_bitmap *bitmap, u32 obj)
{
 return obj & (bitmap->max + bitmap->reserved_top - 1);
}
