
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_4__ {int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_2__ stats; int name; } ;
struct TYPE_3__ {int bufcnt; int buf; } ;
struct baycom_state {TYPE_1__ hdlcrx; } ;


 int ax25_type_trans (struct sk_buff*,struct net_device*) ;
 int check_crc_ccitt (int ,int) ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int memcpy (unsigned char*,int ,unsigned int) ;
 struct baycom_state* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int printk (char*,int ) ;
 unsigned char* skb_put (struct sk_buff*,unsigned int) ;

__attribute__((used)) static void do_rxpacket(struct net_device *dev)
{
 struct baycom_state *bc = netdev_priv(dev);
 struct sk_buff *skb;
 unsigned char *cp;
 unsigned pktlen;

 if (bc->hdlcrx.bufcnt < 4)
  return;
 if (!check_crc_ccitt(bc->hdlcrx.buf, bc->hdlcrx.bufcnt))
  return;
 pktlen = bc->hdlcrx.bufcnt-2+1;
 if (!(skb = dev_alloc_skb(pktlen))) {
  printk("%s: memory squeeze, dropping packet\n", dev->name);
  dev->stats.rx_dropped++;
  return;
 }
 cp = skb_put(skb, pktlen);
 *cp++ = 0;
 memcpy(cp, bc->hdlcrx.buf, pktlen - 1);
 skb->protocol = ax25_type_trans(skb, dev);
 netif_rx(skb);
 dev->stats.rx_packets++;
}
