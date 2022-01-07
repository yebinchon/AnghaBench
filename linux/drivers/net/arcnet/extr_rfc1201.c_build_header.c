
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int tx_aborted_errors; int tx_errors; } ;
struct net_device {int flags; int * dev_addr; TYPE_2__ stats; } ;
struct TYPE_7__ {int sequence; } ;
struct arcnet_local {TYPE_3__ rfc1201; } ;
struct TYPE_8__ {scalar_t__ dest; int source; } ;
struct arc_rfc1201 {scalar_t__ split_flag; int sequence; int proto; } ;
struct TYPE_5__ {struct arc_rfc1201 rfc1201; } ;
struct archdr {TYPE_4__ hard; TYPE_1__ soft; } ;


 int ARC_HDR_SIZE ;
 int ARC_P_ARP ;
 int ARC_P_ATALK ;
 int ARC_P_IP ;
 int ARC_P_IPV6 ;
 int ARC_P_IPX ;
 int ARC_P_RARP ;
 int D_NORMAL ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int RFC1201_HDR_SIZE ;
 int arc_printk (int ,struct net_device*,char*,unsigned short,unsigned short) ;
 int htons (int ) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 struct archdr* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int build_header(struct sk_buff *skb, struct net_device *dev,
   unsigned short type, uint8_t daddr)
{
 struct arcnet_local *lp = netdev_priv(dev);
 int hdr_size = ARC_HDR_SIZE + RFC1201_HDR_SIZE;
 struct archdr *pkt = skb_push(skb, hdr_size);
 struct arc_rfc1201 *soft = &pkt->soft.rfc1201;


 switch (type) {
 case 131:
  soft->proto = ARC_P_IP;
  break;
 case 130:
  soft->proto = ARC_P_IPV6;
  break;
 case 133:
  soft->proto = ARC_P_ARP;
  break;
 case 128:
  soft->proto = ARC_P_RARP;
  break;
 case 129:
 case 134:
 case 135:
  soft->proto = ARC_P_IPX;
  break;
 case 132:
  soft->proto = ARC_P_ATALK;
  break;
 default:
  arc_printk(D_NORMAL, dev, "RFC1201: I don't understand protocol %d (%Xh)\n",
      type, type);
  dev->stats.tx_errors++;
  dev->stats.tx_aborted_errors++;
  return 0;
 }







 pkt->hard.source = *dev->dev_addr;

 soft->sequence = htons(lp->rfc1201.sequence++);
 soft->split_flag = 0;



 if (dev->flags & (IFF_LOOPBACK | IFF_NOARP)) {





  pkt->hard.dest = 0;
  return hdr_size;
 }

 pkt->hard.dest = daddr;
 return hdr_size;
}
