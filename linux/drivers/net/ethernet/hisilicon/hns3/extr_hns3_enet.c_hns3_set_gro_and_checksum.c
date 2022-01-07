
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct hns3_enet_ring {int dummy; } ;
struct TYPE_4__ {void* count; } ;
struct TYPE_3__ {int gso_type; void* gso_size; } ;


 int EFAULT ;
 scalar_t__ HNS3_L3_TYPE_IPV4 ;
 scalar_t__ HNS3_L3_TYPE_IPV6 ;
 int HNS3_RXD_GRO_COUNT_M ;
 int HNS3_RXD_GRO_COUNT_S ;
 int HNS3_RXD_GRO_SIZE_M ;
 int HNS3_RXD_GRO_SIZE_S ;
 int HNS3_RXD_L3ID_M ;
 int HNS3_RXD_L3ID_S ;
 TYPE_2__* NAPI_GRO_CB (struct sk_buff*) ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 void* hnae3_get_field (scalar_t__,int ,int ) ;
 int hns3_gro_complete (struct sk_buff*,scalar_t__) ;
 int hns3_rx_checksum (struct hns3_enet_ring*,struct sk_buff*,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int hns3_set_gro_and_checksum(struct hns3_enet_ring *ring,
         struct sk_buff *skb, u32 l234info,
         u32 bd_base_info, u32 ol_info)
{
 u32 l3_type;

 skb_shinfo(skb)->gso_size = hnae3_get_field(bd_base_info,
          HNS3_RXD_GRO_SIZE_M,
          HNS3_RXD_GRO_SIZE_S);

 if (!skb_shinfo(skb)->gso_size) {
  hns3_rx_checksum(ring, skb, l234info, bd_base_info, ol_info);
  return 0;
 }

 NAPI_GRO_CB(skb)->count = hnae3_get_field(l234info,
        HNS3_RXD_GRO_COUNT_M,
        HNS3_RXD_GRO_COUNT_S);

 l3_type = hnae3_get_field(l234info, HNS3_RXD_L3ID_M, HNS3_RXD_L3ID_S);
 if (l3_type == HNS3_L3_TYPE_IPV4)
  skb_shinfo(skb)->gso_type = SKB_GSO_TCPV4;
 else if (l3_type == HNS3_L3_TYPE_IPV6)
  skb_shinfo(skb)->gso_type = SKB_GSO_TCPV6;
 else
  return -EFAULT;

 return hns3_gro_complete(skb, l234info);
}
