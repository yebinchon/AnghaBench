
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lag_mp {struct fib_info* mfi; } ;
struct mlx5_lag {struct lag_mp lag_mp; } ;
struct fib_nh {int fib_nh_dev; } ;
struct fib_info {int dummy; } ;


 unsigned long FIB_EVENT_NH_ADD ;
 unsigned long FIB_EVENT_NH_DEL ;
 int fib_info_num_path (struct fib_info*) ;
 int mlx5_lag_dev_get_netdev_idx (struct mlx5_lag*,int ) ;
 int mlx5_lag_set_port_affinity (struct mlx5_lag*,int) ;

__attribute__((used)) static void mlx5_lag_fib_nexthop_event(struct mlx5_lag *ldev,
           unsigned long event,
           struct fib_nh *fib_nh,
           struct fib_info *fi)
{
 struct lag_mp *mp = &ldev->lag_mp;


 if (!mp->mfi || mp->mfi != fi)
  return;


 if (event == FIB_EVENT_NH_DEL) {
  int i = mlx5_lag_dev_get_netdev_idx(ldev, fib_nh->fib_nh_dev);

  if (i >= 0) {
   i = (i + 1) % 2 + 1;
   mlx5_lag_set_port_affinity(ldev, i);
  }
 } else if (event == FIB_EVENT_NH_ADD &&
     fib_info_num_path(fi) == 2) {
  mlx5_lag_set_port_affinity(ldev, 0);
 }
}
