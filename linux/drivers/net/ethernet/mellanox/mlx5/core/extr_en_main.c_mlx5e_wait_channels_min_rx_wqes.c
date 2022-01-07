
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_channels {int num; TYPE_1__** c; } ;
struct TYPE_2__ {int rq; } ;


 int ETIMEDOUT ;
 int MLX5E_RQ_WQES_TIMEOUT ;
 int mlx5e_wait_for_min_rx_wqes (int *,int) ;

__attribute__((used)) static int mlx5e_wait_channels_min_rx_wqes(struct mlx5e_channels *chs)
{
 int err = 0;
 int i;

 for (i = 0; i < chs->num; i++) {
  int timeout = err ? 0 : MLX5E_RQ_WQES_TIMEOUT;

  err |= mlx5e_wait_for_min_rx_wqes(&chs->c[i]->rq, timeout);




 }

 return err ? -ETIMEDOUT : 0;
}
