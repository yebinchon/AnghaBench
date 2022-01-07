
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_txqsq {int txq; int state; int txq_ix; TYPE_1__* channel; } ;
struct TYPE_2__ {int netdev; } ;


 int MLX5E_SQ_STATE_ENABLED ;
 int netdev_get_tx_queue (int ,int ) ;
 int netdev_tx_reset_queue (int ) ;
 int netif_tx_start_queue (int ) ;
 int set_bit (int ,int *) ;

void mlx5e_activate_txqsq(struct mlx5e_txqsq *sq)
{
 sq->txq = netdev_get_tx_queue(sq->channel->netdev, sq->txq_ix);
 set_bit(MLX5E_SQ_STATE_ENABLED, &sq->state);
 netdev_tx_reset_queue(sq->txq);
 netif_tx_start_queue(sq->txq);
}
