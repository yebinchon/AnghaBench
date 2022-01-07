
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlx5_intf_mutex ;
 int mutex_unlock (int *) ;

void mlx5_dev_list_unlock(void)
{
 mutex_unlock(&mlx5_intf_mutex);
}
