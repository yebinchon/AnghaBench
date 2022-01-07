
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int count; unsigned int start; } ;
struct TYPE_4__ {TYPE_1__ reserved_gids; } ;
struct mlx5_core_dev {TYPE_2__ roce; int intf_state; } ;


 int MLX5_INTERFACE_STATE_UP ;
 int WARN (int,char*,...) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,unsigned int,unsigned int) ;
 int test_bit (int ,int *) ;

void mlx5_core_unreserve_gids(struct mlx5_core_dev *dev, unsigned int count)
{
 WARN(test_bit(MLX5_INTERFACE_STATE_UP, &dev->intf_state), "Unreserving GIDs when interfaces are up");
 WARN(count > dev->roce.reserved_gids.count, "Unreserving %u GIDs when only %u reserved",
      count, dev->roce.reserved_gids.count);

 dev->roce.reserved_gids.start += count;
 dev->roce.reserved_gids.count -= count;
 mlx5_core_dbg(dev, "%u GIDs starting at %u left reserved\n",
        dev->roce.reserved_gids.count,
        dev->roce.reserved_gids.start);
}
