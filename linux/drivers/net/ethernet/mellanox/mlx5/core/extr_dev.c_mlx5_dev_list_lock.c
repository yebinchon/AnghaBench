
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlx5_intf_mutex ;
 int mutex_lock (int *) ;

void mlx5_dev_list_lock(void)
{
 mutex_lock(&mlx5_intf_mutex);
}
