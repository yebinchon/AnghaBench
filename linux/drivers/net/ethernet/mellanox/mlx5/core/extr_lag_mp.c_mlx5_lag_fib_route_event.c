
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct lag_tracker {int dummy; } ;
struct lag_mp {struct fib_info* mfi; } ;
struct mlx5_lag {struct lag_tracker tracker; TYPE_1__* pf; struct lag_mp lag_mp; } ;
struct fib_nh {scalar_t__ fib_nh_dev; } ;
struct fib_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ netdev; int dev; } ;


 unsigned long FIB_EVENT_ENTRY_DEL ;
 int MLX5_LAG_FLAG_MULTIPATH ;
 scalar_t__ __mlx5_lag_is_active (struct mlx5_lag*) ;
 struct fib_nh* fib_info_nh (struct fib_info*,int) ;
 unsigned int fib_info_num_path (struct fib_info*) ;
 int mlx5_activate_lag (struct mlx5_lag*,struct lag_tracker*,int ) ;
 int mlx5_core_warn (int ,char*) ;
 int mlx5_lag_dev_get_netdev_idx (struct mlx5_lag*,struct net_device*) ;
 int mlx5_lag_set_port_affinity (struct mlx5_lag*,int) ;

__attribute__((used)) static void mlx5_lag_fib_route_event(struct mlx5_lag *ldev,
         unsigned long event,
         struct fib_info *fi)
{
 struct lag_mp *mp = &ldev->lag_mp;
 struct fib_nh *fib_nh0, *fib_nh1;
 unsigned int nhs;


 if (event == FIB_EVENT_ENTRY_DEL) {

  if (mp->mfi == fi)
   mp->mfi = ((void*)0);
  return;
 }


 nhs = fib_info_num_path(fi);
 if (nhs == 1) {
  if (__mlx5_lag_is_active(ldev)) {
   struct fib_nh *nh = fib_info_nh(fi, 0);
   struct net_device *nh_dev = nh->fib_nh_dev;
   int i = mlx5_lag_dev_get_netdev_idx(ldev, nh_dev);

   mlx5_lag_set_port_affinity(ldev, ++i);
  }
  return;
 }

 if (nhs != 2)
  return;


 fib_nh0 = fib_info_nh(fi, 0);
 fib_nh1 = fib_info_nh(fi, 1);
 if (!(fib_nh0->fib_nh_dev == ldev->pf[0].netdev &&
       fib_nh1->fib_nh_dev == ldev->pf[1].netdev) &&
     !(fib_nh0->fib_nh_dev == ldev->pf[1].netdev &&
       fib_nh1->fib_nh_dev == ldev->pf[0].netdev)) {
  mlx5_core_warn(ldev->pf[0].dev, "Multipath offload require two ports of the same HCA\n");
  return;
 }


 if (!mp->mfi && !__mlx5_lag_is_active(ldev)) {
  struct lag_tracker tracker;

  tracker = ldev->tracker;
  mlx5_activate_lag(ldev, &tracker, MLX5_LAG_FLAG_MULTIPATH);
 }

 mlx5_lag_set_port_affinity(ldev, 0);
 mp->mfi = fi;
}
