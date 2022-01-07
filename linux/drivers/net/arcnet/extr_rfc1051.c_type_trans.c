
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int pkt_type; scalar_t__ data; } ;
struct TYPE_6__ {int rx_crc_errors; int rx_errors; } ;
struct net_device {int flags; scalar_t__* dev_addr; TYPE_3__ stats; } ;
struct TYPE_5__ {scalar_t__ dest; } ;
struct arc_rfc1051 {int proto; } ;
struct TYPE_4__ {struct arc_rfc1051 rfc1051; } ;
struct archdr {TYPE_2__ hard; TYPE_1__ soft; } ;
typedef int __be16 ;


 int ARC_HDR_SIZE ;


 int ETH_P_ARP ;
 int ETH_P_IP ;
 int IFF_PROMISC ;
 int PACKET_BROADCAST ;
 int PACKET_OTHERHOST ;
 int RFC1051_HDR_SIZE ;
 int htons (int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static __be16 type_trans(struct sk_buff *skb, struct net_device *dev)
{
 struct archdr *pkt = (struct archdr *)skb->data;
 struct arc_rfc1051 *soft = &pkt->soft.rfc1051;
 int hdr_size = ARC_HDR_SIZE + RFC1051_HDR_SIZE;


 skb_reset_mac_header(skb);
 skb_pull(skb, hdr_size);

 if (pkt->hard.dest == 0) {
  skb->pkt_type = PACKET_BROADCAST;
 } else if (dev->flags & IFF_PROMISC) {

  if (pkt->hard.dest != dev->dev_addr[0])
   skb->pkt_type = PACKET_OTHERHOST;
 }

 switch (soft->proto) {
 case 128:
  return htons(ETH_P_IP);
 case 129:
  return htons(ETH_P_ARP);

 default:
  dev->stats.rx_errors++;
  dev->stats.rx_crc_errors++;
  return 0;
 }

 return htons(ETH_P_IP);
}
