
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc_bulk {int base_id; int bitmask; } ;
struct mlx5_fc {int id; } ;


 int EINVAL ;
 int set_bit (int,int ) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int mlx5_fc_bulk_release_fc(struct mlx5_fc_bulk *bulk, struct mlx5_fc *fc)
{
 int fc_index = fc->id - bulk->base_id;

 if (test_bit(fc_index, bulk->bitmask))
  return -EINVAL;

 set_bit(fc_index, bulk->bitmask);
 return 0;
}
