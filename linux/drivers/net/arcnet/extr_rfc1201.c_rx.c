
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct sk_buff {int len; void* protocol; struct arc_rfc1201* data; struct net_device* dev; } ;
struct TYPE_6__ {int rx_missed_errors; int rx_errors; int rx_frame_errors; int rx_dropped; int rx_length_errors; int rx_crc_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct arphdr {int ar_hln; int ar_pln; } ;
struct TYPE_7__ {int (* copy_from_card ) (struct net_device*,int,int,struct arc_rfc1201*,int) ;} ;
struct TYPE_10__ {int aborted_seq; struct Incoming* incoming; } ;
struct arcnet_local {TYPE_2__ hw; TYPE_5__ rfc1201; } ;
struct TYPE_9__ {int source; } ;
struct arc_rfc1201 {int split_flag; int sequence; scalar_t__ proto; scalar_t__ payload; } ;
struct TYPE_8__ {struct arc_rfc1201 rfc1201; struct arc_rfc1201* raw; } ;
struct archdr {TYPE_4__ hard; TYPE_3__ soft; } ;
struct Incoming {int sequence; int lastpacket; int numpackets; struct sk_buff* skb; } ;


 int ARC_HDR_SIZE ;
 scalar_t__ ARC_P_ARP ;
 scalar_t__ BUGLVL (int ) ;
 int D_DURING ;
 int D_EXTRA ;
 int D_NORMAL ;
 int D_RX ;
 int D_SKB ;
 int D_SKB_SIZE ;
 int GFP_ATOMIC ;
 int MinTU ;
 int RFC1201_HDR_SIZE ;
 struct sk_buff* alloc_skb (int,int ) ;
 int arc_printk (int ,struct net_device*,char*,...) ;
 int arcnet_dump_skb (struct net_device*,struct sk_buff*,char*) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int memcpy (struct archdr*,struct archdr*,int) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int stub1 (struct net_device*,int,int,struct arc_rfc1201*,int) ;
 int stub2 (struct net_device*,int,int,struct arc_rfc1201*,int) ;
 int stub3 (struct net_device*,int,int,struct arc_rfc1201*,int) ;
 void* type_trans (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static void rx(struct net_device *dev, int bufnum,
        struct archdr *pkthdr, int length)
{
 struct arcnet_local *lp = netdev_priv(dev);
 struct sk_buff *skb;
 struct archdr *pkt = pkthdr;
 struct arc_rfc1201 *soft = &pkthdr->soft.rfc1201;
 int saddr = pkt->hard.source, ofs;
 struct Incoming *in = &lp->rfc1201.incoming[saddr];

 arc_printk(D_DURING, dev, "it's an RFC1201 packet (length=%d)\n",
     length);

 if (length >= MinTU)
  ofs = 512 - length;
 else
  ofs = 256 - length;

 if (soft->split_flag == 0xFF) {
  if (length >= 4 + RFC1201_HDR_SIZE) {
   arc_printk(D_DURING, dev, "compensating for exception packet\n");
  } else {
   arc_printk(D_EXTRA, dev, "short RFC1201 exception packet from %02Xh",
       saddr);
   return;
  }


  length -= 4;
  ofs += 4;
  lp->hw.copy_from_card(dev, bufnum, 512 - length,
          soft, sizeof(pkt->soft));
 }
 if (!soft->split_flag) {
  arc_printk(D_RX, dev, "incoming is not split (splitflag=%d)\n",
      soft->split_flag);

  if (in->skb) {
   arc_printk(D_EXTRA, dev, "aborting assembly (seq=%d) for unsplit packet (splitflag=%d, seq=%d)\n",
       in->sequence, soft->split_flag,
       soft->sequence);
   lp->rfc1201.aborted_seq = soft->sequence;
   dev_kfree_skb_irq(in->skb);
   dev->stats.rx_errors++;
   dev->stats.rx_missed_errors++;
   in->skb = ((void*)0);
  }
  in->sequence = soft->sequence;

  skb = alloc_skb(length + ARC_HDR_SIZE, GFP_ATOMIC);
  if (!skb) {
   dev->stats.rx_dropped++;
   return;
  }
  skb_put(skb, length + ARC_HDR_SIZE);
  skb->dev = dev;

  pkt = (struct archdr *)skb->data;
  soft = &pkt->soft.rfc1201;




  memcpy(pkt, pkthdr, sizeof(struct archdr));
  if (length > sizeof(pkt->soft))
   lp->hw.copy_from_card(dev, bufnum,
           ofs + sizeof(pkt->soft),
           pkt->soft.raw + sizeof(pkt->soft),
           length - sizeof(pkt->soft));






  if (soft->proto == ARC_P_ARP) {
   struct arphdr *arp = (struct arphdr *)soft->payload;


   if (arp->ar_hln == 1 && arp->ar_pln == 4) {
    uint8_t *cptr = (uint8_t *)arp + sizeof(struct arphdr);

    if (!*cptr) {
     arc_printk(D_EXTRA, dev,
         "ARP source address was 00h, set to %02Xh\n",
         saddr);
     dev->stats.rx_crc_errors++;
     *cptr = saddr;
    } else {
     arc_printk(D_DURING, dev, "ARP source address (%Xh) is fine.\n",
         *cptr);
    }
   } else {
    arc_printk(D_NORMAL, dev, "funny-shaped ARP packet. (%Xh, %Xh)\n",
        arp->ar_hln, arp->ar_pln);
    dev->stats.rx_errors++;
    dev->stats.rx_crc_errors++;
   }
  }
  if (BUGLVL(D_SKB))
   arcnet_dump_skb(dev, skb, "rx");

  skb->protocol = type_trans(skb, dev);
  netif_rx(skb);
 } else {
  arc_printk(D_RX, dev, "packet is split (splitflag=%d, seq=%d)\n",
      soft->split_flag, in->sequence);

  if (in->skb && in->sequence != soft->sequence) {
   arc_printk(D_EXTRA, dev, "wrong seq number (saddr=%d, expected=%d, seq=%d, splitflag=%d)\n",
       saddr, in->sequence, soft->sequence,
       soft->split_flag);
   dev_kfree_skb_irq(in->skb);
   in->skb = ((void*)0);
   dev->stats.rx_errors++;
   dev->stats.rx_missed_errors++;
   in->lastpacket = in->numpackets = 0;
  }
  if (soft->split_flag & 1) {
   arc_printk(D_RX, dev, "brand new splitpacket (splitflag=%d)\n",
       soft->split_flag);
   if (in->skb) {
    arc_printk(D_EXTRA, dev, "aborting previous (seq=%d) assembly (splitflag=%d, seq=%d)\n",
        in->sequence, soft->split_flag,
        soft->sequence);
    dev->stats.rx_errors++;
    dev->stats.rx_missed_errors++;
    dev_kfree_skb_irq(in->skb);
   }
   in->sequence = soft->sequence;
   in->numpackets = ((unsigned)soft->split_flag >> 1) + 2;
   in->lastpacket = 1;

   if (in->numpackets > 16) {
    arc_printk(D_EXTRA, dev, "incoming packet more than 16 segments; dropping. (splitflag=%d)\n",
        soft->split_flag);
    lp->rfc1201.aborted_seq = soft->sequence;
    dev->stats.rx_errors++;
    dev->stats.rx_length_errors++;
    return;
   }
   in->skb = skb = alloc_skb(508 * in->numpackets + ARC_HDR_SIZE,
        GFP_ATOMIC);
   if (!skb) {
    arc_printk(D_NORMAL, dev, "(split) memory squeeze, dropping packet.\n");
    lp->rfc1201.aborted_seq = soft->sequence;
    dev->stats.rx_dropped++;
    return;
   }
   skb->dev = dev;
   pkt = (struct archdr *)skb->data;
   soft = &pkt->soft.rfc1201;

   memcpy(pkt, pkthdr, ARC_HDR_SIZE + RFC1201_HDR_SIZE);
   skb_put(skb, ARC_HDR_SIZE + RFC1201_HDR_SIZE);

   soft->split_flag = 0;
  } else {
   int packetnum = ((unsigned)soft->split_flag >> 1) + 1;




   if (!in->skb) {
    if (lp->rfc1201.aborted_seq != soft->sequence) {
     arc_printk(D_EXTRA, dev, "can't continue split without starting first! (splitflag=%d, seq=%d, aborted=%d)\n",
         soft->split_flag,
         soft->sequence,
         lp->rfc1201.aborted_seq);
     dev->stats.rx_errors++;
     dev->stats.rx_missed_errors++;
    }
    return;
   }
   in->lastpacket++;

   if (packetnum != in->lastpacket) {

    if (packetnum <= in->lastpacket - 1) {
     arc_printk(D_EXTRA, dev, "duplicate splitpacket ignored! (splitflag=%d)\n",
         soft->split_flag);
     dev->stats.rx_errors++;
     dev->stats.rx_frame_errors++;
     return;
    }

    arc_printk(D_EXTRA, dev, "out-of-order splitpacket, reassembly (seq=%d) aborted (splitflag=%d, seq=%d)\n",
        in->sequence, soft->split_flag,
        soft->sequence);
    lp->rfc1201.aborted_seq = soft->sequence;
    dev_kfree_skb_irq(in->skb);
    in->skb = ((void*)0);
    dev->stats.rx_errors++;
    dev->stats.rx_missed_errors++;
    in->lastpacket = in->numpackets = 0;
    return;
   }
   pkt = (struct archdr *)in->skb->data;
   soft = &pkt->soft.rfc1201;
  }

  skb = in->skb;

  lp->hw.copy_from_card(dev, bufnum, ofs + RFC1201_HDR_SIZE,
          skb->data + skb->len,
          length - RFC1201_HDR_SIZE);
  skb_put(skb, length - RFC1201_HDR_SIZE);


  if (in->lastpacket == in->numpackets) {
   in->skb = ((void*)0);
   in->lastpacket = in->numpackets = 0;

   arc_printk(D_SKB_SIZE, dev, "skb: received %d bytes from %02X (unsplit)\n",
       skb->len, pkt->hard.source);
   arc_printk(D_SKB_SIZE, dev, "skb: received %d bytes from %02X (split)\n",
       skb->len, pkt->hard.source);
   if (BUGLVL(D_SKB))
    arcnet_dump_skb(dev, skb, "rx");

   skb->protocol = type_trans(skb, dev);
   netif_rx(skb);
  }
 }
}
