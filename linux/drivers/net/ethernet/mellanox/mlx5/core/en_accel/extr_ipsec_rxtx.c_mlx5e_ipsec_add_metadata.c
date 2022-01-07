
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int mac_header; scalar_t__ data; } ;
struct TYPE_2__ {int raw; } ;
struct mlx5e_ipsec_metadata {TYPE_1__ content; } ;
struct ethhdr {int h_proto; } ;


 int ENOMEM ;
 struct mlx5e_ipsec_metadata* ERR_PTR (int ) ;
 int ETH_ALEN ;
 int MLX5E_METADATA_ETHER_TYPE ;
 int cpu_to_be16 (int ) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int memset (int ,int ,int) ;
 int skb_cow_head (struct sk_buff*,int) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct mlx5e_ipsec_metadata *mlx5e_ipsec_add_metadata(struct sk_buff *skb)
{
 struct mlx5e_ipsec_metadata *mdata;
 struct ethhdr *eth;

 if (unlikely(skb_cow_head(skb, sizeof(*mdata))))
  return ERR_PTR(-ENOMEM);

 eth = (struct ethhdr *)skb_push(skb, sizeof(*mdata));
 skb->mac_header -= sizeof(*mdata);
 mdata = (struct mlx5e_ipsec_metadata *)(eth + 1);

 memmove(skb->data, skb->data + sizeof(*mdata),
  2 * ETH_ALEN);

 eth->h_proto = cpu_to_be16(MLX5E_METADATA_ETHER_TYPE);

 memset(mdata->content.raw, 0, sizeof(mdata->content.raw));
 return mdata;
}
