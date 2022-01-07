
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int start; int count; int ida; } ;
struct TYPE_3__ {TYPE_2__ reserved_gids; } ;
struct mlx5_core_dev {TYPE_1__ roce; } ;


 int GFP_KERNEL ;
 int ida_simple_get (int *,int,int,int ) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int) ;

int mlx5_core_reserved_gid_alloc(struct mlx5_core_dev *dev, int *gid_index)
{
 int end = dev->roce.reserved_gids.start +
    dev->roce.reserved_gids.count;
 int index = 0;

 index = ida_simple_get(&dev->roce.reserved_gids.ida,
          dev->roce.reserved_gids.start, end,
          GFP_KERNEL);
 if (index < 0)
  return index;

 mlx5_core_dbg(dev, "Allocating reserved GID %u\n", index);
 *gid_index = index;
 return 0;
}
