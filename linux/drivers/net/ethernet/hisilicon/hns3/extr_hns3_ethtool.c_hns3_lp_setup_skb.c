
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; } ;
struct net_device {int dev_addr; } ;
struct hnae3_handle {TYPE_1__* pdev; } ;
struct ethhdr {int h_proto; int h_source; int * h_dest; } ;
struct TYPE_2__ {int revision; } ;


 int ETH_ALEN ;
 int ETH_P_ARP ;
 scalar_t__ HNS3_NIC_LB_DST_MAC_ADDR ;
 unsigned int HNS3_NIC_LB_TEST_PACKET_SIZE ;
 int NET_IP_ALIGN ;
 int eth_zero_addr (int ) ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int htons (int ) ;
 int memcpy (int *,int ,int ) ;
 void* skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static void hns3_lp_setup_skb(struct sk_buff *skb)
{


 struct net_device *ndev = skb->dev;
 struct hnae3_handle *handle;
 unsigned char *packet;
 struct ethhdr *ethh;
 unsigned int i;

 skb_reserve(skb, NET_IP_ALIGN);
 ethh = skb_put(skb, sizeof(struct ethhdr));
 packet = skb_put(skb, HNS3_NIC_LB_TEST_PACKET_SIZE);

 memcpy(ethh->h_dest, ndev->dev_addr, ETH_ALEN);






 handle = hns3_get_handle(ndev);
 if (handle->pdev->revision == 0x20)
  ethh->h_dest[5] += 0x1f;
 eth_zero_addr(ethh->h_source);
 ethh->h_proto = htons(ETH_P_ARP);
 skb_reset_mac_header(skb);

 for (i = 0; i < HNS3_NIC_LB_TEST_PACKET_SIZE; i++)
  packet[i] = (unsigned char)(i & 0xff);
}
