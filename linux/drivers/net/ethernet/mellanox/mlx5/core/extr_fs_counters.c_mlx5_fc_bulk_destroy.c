
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc_bulk {scalar_t__ bulk_len; struct mlx5_fc_bulk* bitmask; int base_id; } ;
struct mlx5_core_dev {int dummy; } ;


 int EBUSY ;
 int kfree (struct mlx5_fc_bulk*) ;
 int mlx5_cmd_fc_free (struct mlx5_core_dev*,int ) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 scalar_t__ mlx5_fc_bulk_get_free_fcs_amount (struct mlx5_fc_bulk*) ;

__attribute__((used)) static int
mlx5_fc_bulk_destroy(struct mlx5_core_dev *dev, struct mlx5_fc_bulk *bulk)
{
 if (mlx5_fc_bulk_get_free_fcs_amount(bulk) < bulk->bulk_len) {
  mlx5_core_err(dev, "Freeing bulk before all counters were released\n");
  return -EBUSY;
 }

 mlx5_cmd_fc_free(dev, bulk->base_id);
 kfree(bulk->bitmask);
 kfree(bulk);

 return 0;
}
