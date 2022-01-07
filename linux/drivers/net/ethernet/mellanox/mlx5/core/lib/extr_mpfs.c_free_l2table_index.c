
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_mpfs {int bitmap; } ;


 int __clear_bit (int ,int ) ;

__attribute__((used)) static void free_l2table_index(struct mlx5_mpfs *l2table, u32 ix)
{
 __clear_bit(ix, l2table->bitmap);
}
