
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_core_dev {int dummy; } ;
typedef int __be64 ;


 int* MLX5_CAP_DEV_EVENT (struct mlx5_core_dev*,int*) ;
 int be64_to_cpu (int) ;

__attribute__((used)) static void gather_user_async_events(struct mlx5_core_dev *dev, u64 mask[4])
{
 __be64 *user_unaffiliated_events;
 __be64 *user_affiliated_events;
 int i;

 user_affiliated_events =
  MLX5_CAP_DEV_EVENT(dev, user_affiliated_events);
 user_unaffiliated_events =
  MLX5_CAP_DEV_EVENT(dev, user_unaffiliated_events);

 for (i = 0; i < 4; i++)
  mask[i] |= be64_to_cpu(user_affiliated_events[i] |
           user_unaffiliated_events[i]);
}
