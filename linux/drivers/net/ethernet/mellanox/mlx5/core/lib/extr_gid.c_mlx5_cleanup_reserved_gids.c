
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ida; scalar_t__ count; scalar_t__ start; } ;
struct TYPE_4__ {TYPE_1__ reserved_gids; } ;
struct mlx5_core_dev {TYPE_2__ roce; } ;


 int WARN_ON (int) ;
 int ida_destroy (int *) ;
 int ida_is_empty (int *) ;

void mlx5_cleanup_reserved_gids(struct mlx5_core_dev *dev)
{
 WARN_ON(!ida_is_empty(&dev->roce.reserved_gids.ida));
 dev->roce.reserved_gids.start = 0;
 dev->roce.reserved_gids.count = 0;
 ida_destroy(&dev->roce.reserved_gids.ida);
}
