
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int tx_aborted_errors; int tx_errors; } ;
struct net_device {int flags; int * dev_addr; TYPE_2__ stats; } ;
struct TYPE_6__ {scalar_t__ dest; int source; } ;
struct arc_rfc1051 {int proto; } ;
struct TYPE_4__ {struct arc_rfc1051 rfc1051; } ;
struct archdr {TYPE_3__ hard; TYPE_1__ soft; } ;


 int ARC_HDR_SIZE ;
 int ARC_P_ARP_RFC1051 ;
 int ARC_P_IP_RFC1051 ;
 int D_NORMAL ;


 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int RFC1051_HDR_SIZE ;
 int arc_printk (int ,struct net_device*,char*,unsigned short,unsigned short) ;
 struct archdr* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int build_header(struct sk_buff *skb, struct net_device *dev,
   unsigned short type, uint8_t daddr)
{
 int hdr_size = ARC_HDR_SIZE + RFC1051_HDR_SIZE;
 struct archdr *pkt = skb_push(skb, hdr_size);
 struct arc_rfc1051 *soft = &pkt->soft.rfc1051;


 switch (type) {
 case 128:
  soft->proto = ARC_P_IP_RFC1051;
  break;
 case 129:
  soft->proto = ARC_P_ARP_RFC1051;
  break;
 default:
  arc_printk(D_NORMAL, dev, "RFC1051: I don't understand protocol %d (%Xh)\n",
      type, type);
  dev->stats.tx_errors++;
  dev->stats.tx_aborted_errors++;
  return 0;
 }







 pkt->hard.source = *dev->dev_addr;



 if (dev->flags & (IFF_LOOPBACK | IFF_NOARP)) {



  pkt->hard.dest = 0;
  return hdr_size;
 }

 pkt->hard.dest = daddr;

 return hdr_size;
}
