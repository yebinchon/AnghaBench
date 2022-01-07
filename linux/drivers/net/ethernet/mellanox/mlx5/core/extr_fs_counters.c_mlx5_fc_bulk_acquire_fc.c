
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc_bulk {int bulk_len; struct mlx5_fc* fcs; int bitmask; } ;
struct mlx5_fc {int dummy; } ;


 int ENOSPC ;
 struct mlx5_fc* ERR_PTR (int ) ;
 int clear_bit (int,int ) ;
 int find_first_bit (int ,int) ;

__attribute__((used)) static struct mlx5_fc *mlx5_fc_bulk_acquire_fc(struct mlx5_fc_bulk *bulk)
{
 int free_fc_index = find_first_bit(bulk->bitmask, bulk->bulk_len);

 if (free_fc_index >= bulk->bulk_len)
  return ERR_PTR(-ENOSPC);

 clear_bit(free_fc_index, bulk->bitmask);
 return &bulk->fcs[free_fc_index];
}
