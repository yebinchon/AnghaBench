
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int dummy; } ;


 scalar_t__ MTK_MAX_RX_LENGTH ;
 scalar_t__ MTK_RX_ETH_HLEN ;
 int MTK_RX_HLEN ;
 int SKB_DATA_ALIGN (int) ;

__attribute__((used)) static inline int mtk_max_frag_size(int mtu)
{

 if (mtu + MTK_RX_ETH_HLEN < MTK_MAX_RX_LENGTH)
  mtu = MTK_MAX_RX_LENGTH - MTK_RX_ETH_HLEN;

 return SKB_DATA_ALIGN(MTK_RX_HLEN + mtu) +
  SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
}
