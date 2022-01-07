
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_7__ {int tx_errors; } ;
struct net_device {TYPE_3__ stats; int needed_headroom; } ;
struct TYPE_5__ {int daddr; int saddr; } ;
struct gtp_pktinfo {int gtph_port; TYPE_4__* rt; TYPE_2__* iph; TYPE_1__ fl4; int sk; int dev; } ;
typedef int netdev_tx_t ;
struct TYPE_8__ {int dst; } ;
struct TYPE_6__ {int tos; int daddr; int saddr; } ;


 int EOPNOTSUPP ;

 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int gtp_build_skb_ip4 (struct sk_buff*,struct net_device*,struct gtp_pktinfo*) ;
 int ip4_dst_hoplimit (int *) ;
 int netdev_dbg (int ,char*,int *,int *) ;
 unsigned int ntohs (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;
 int skb_reset_inner_headers (struct sk_buff*) ;
 int udp_tunnel_xmit_skb (TYPE_4__*,int ,struct sk_buff*,int ,int ,int ,int ,int ,int ,int ,int,int) ;

__attribute__((used)) static netdev_tx_t gtp_dev_xmit(struct sk_buff *skb, struct net_device *dev)
{
 unsigned int proto = ntohs(skb->protocol);
 struct gtp_pktinfo pktinfo;
 int err;


 if (skb_cow_head(skb, dev->needed_headroom))
  goto tx_err;

 skb_reset_inner_headers(skb);


 rcu_read_lock();
 switch (proto) {
 case 128:
  err = gtp_build_skb_ip4(skb, dev, &pktinfo);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }
 rcu_read_unlock();

 if (err < 0)
  goto tx_err;

 switch (proto) {
 case 128:
  netdev_dbg(pktinfo.dev, "gtp -> IP src: %pI4 dst: %pI4\n",
      &pktinfo.iph->saddr, &pktinfo.iph->daddr);
  udp_tunnel_xmit_skb(pktinfo.rt, pktinfo.sk, skb,
        pktinfo.fl4.saddr, pktinfo.fl4.daddr,
        pktinfo.iph->tos,
        ip4_dst_hoplimit(&pktinfo.rt->dst),
        0,
        pktinfo.gtph_port, pktinfo.gtph_port,
        1, 0);
  break;
 }

 return NETDEV_TX_OK;
tx_err:
 dev->stats.tx_errors++;
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
