
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct mlx5e_swp_spec {scalar_t__ l3_proto; scalar_t__ l4_proto; scalar_t__ tun_l3_proto; int tun_l4_proto; scalar_t__ is_tun; } ;
struct mlx5_wqe_eth_seg {int swp_outer_l3_offset; int swp_outer_l4_offset; int swp_inner_l3_offset; int swp_inner_l4_offset; int swp_flags; } ;


 int ETH_P_IPV6 ;


 int MLX5_ETH_WQE_SWP_INNER_L3_IPV6 ;
 int MLX5_ETH_WQE_SWP_INNER_L4_UDP ;
 int MLX5_ETH_WQE_SWP_OUTER_L3_IPV6 ;
 int MLX5_ETH_WQE_SWP_OUTER_L4_UDP ;
 scalar_t__ htons (int ) ;
 int skb_inner_network_offset (struct sk_buff*) ;
 int skb_inner_transport_offset (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static inline void
mlx5e_set_eseg_swp(struct sk_buff *skb, struct mlx5_wqe_eth_seg *eseg,
     struct mlx5e_swp_spec *swp_spec)
{

 eseg->swp_outer_l3_offset = skb_network_offset(skb) / 2;
 if (swp_spec->l3_proto == htons(ETH_P_IPV6))
  eseg->swp_flags |= MLX5_ETH_WQE_SWP_OUTER_L3_IPV6;
 if (swp_spec->l4_proto) {
  eseg->swp_outer_l4_offset = skb_transport_offset(skb) / 2;
  if (swp_spec->l4_proto == 128)
   eseg->swp_flags |= MLX5_ETH_WQE_SWP_OUTER_L4_UDP;
 }

 if (swp_spec->is_tun) {
  eseg->swp_inner_l3_offset = skb_inner_network_offset(skb) / 2;
  if (swp_spec->tun_l3_proto == htons(ETH_P_IPV6))
   eseg->swp_flags |= MLX5_ETH_WQE_SWP_INNER_L3_IPV6;
 } else {
  eseg->swp_inner_l3_offset = skb_network_offset(skb) / 2;
  if (swp_spec->l3_proto == htons(ETH_P_IPV6))
   eseg->swp_flags |= MLX5_ETH_WQE_SWP_INNER_L3_IPV6;
 }
 switch (swp_spec->tun_l4_proto) {
 case 128:
  eseg->swp_flags |= MLX5_ETH_WQE_SWP_INNER_L4_UDP;

 case 129:
  eseg->swp_inner_l4_offset = skb_inner_transport_offset(skb) / 2;
  break;
 }
}
