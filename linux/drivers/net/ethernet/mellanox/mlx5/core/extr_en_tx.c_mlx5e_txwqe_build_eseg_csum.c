
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct mlx5e_txqsq {TYPE_1__* stats; } ;
struct mlx5_wqe_eth_seg {int cs_flags; } ;
struct TYPE_2__ {int csum_none; int csum_partial; int csum_partial_inner; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int MLX5_ETH_WQE_L3_CSUM ;
 int MLX5_ETH_WQE_L3_INNER_CSUM ;
 int MLX5_ETH_WQE_L4_CSUM ;
 int MLX5_ETH_WQE_L4_INNER_CSUM ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline void
mlx5e_txwqe_build_eseg_csum(struct mlx5e_txqsq *sq, struct sk_buff *skb, struct mlx5_wqe_eth_seg *eseg)
{
 if (likely(skb->ip_summed == CHECKSUM_PARTIAL)) {
  eseg->cs_flags = MLX5_ETH_WQE_L3_CSUM;
  if (skb->encapsulation) {
   eseg->cs_flags |= MLX5_ETH_WQE_L3_INNER_CSUM |
       MLX5_ETH_WQE_L4_INNER_CSUM;
   sq->stats->csum_partial_inner++;
  } else {
   eseg->cs_flags |= MLX5_ETH_WQE_L4_CSUM;
   sq->stats->csum_partial++;
  }
 } else
  sq->stats->csum_none++;
}
