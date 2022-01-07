
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_channels {int num; int * c; } ;


 int kfree (int *) ;
 int mlx5e_close_channel (int ) ;

void mlx5e_close_channels(struct mlx5e_channels *chs)
{
 int i;

 for (i = 0; i < chs->num; i++)
  mlx5e_close_channel(chs->c[i]);

 kfree(chs->c);
 chs->num = 0;
}
