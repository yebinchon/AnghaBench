
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlx5_intf_mutex ;
 int mutex_trylock (int *) ;

int mlx5_dev_list_trylock(void)
{
 return mutex_trylock(&mlx5_intf_mutex);
}
