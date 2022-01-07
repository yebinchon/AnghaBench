
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct mlx5e_ipsec_metadata {int dummy; } ;


 scalar_t__ ETH_HLEN ;
 scalar_t__ MLX5E_METADATA_ETHER_LEN ;
 int is_metadata_hdr_valid (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct xfrm_state* mlx5e_ipsec_build_sp (struct net_device*,struct sk_buff*,struct mlx5e_ipsec_metadata*) ;
 int remove_metadata_hdr (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

struct sk_buff *mlx5e_ipsec_handle_rx_skb(struct net_device *netdev,
       struct sk_buff *skb, u32 *cqe_bcnt)
{
 struct mlx5e_ipsec_metadata *mdata;
 struct xfrm_state *xs;

 if (!is_metadata_hdr_valid(skb))
  return skb;


 mdata = (struct mlx5e_ipsec_metadata *)(skb->data + ETH_HLEN);
 xs = mlx5e_ipsec_build_sp(netdev, skb, mdata);
 if (unlikely(!xs)) {
  kfree_skb(skb);
  return ((void*)0);
 }

 remove_metadata_hdr(skb);
 *cqe_bcnt -= MLX5E_METADATA_ETHER_LEN;

 return skb;
}
