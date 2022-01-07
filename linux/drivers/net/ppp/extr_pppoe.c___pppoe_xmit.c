
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct sk_buff {int len; struct net_device* dev; int protocol; } ;
struct TYPE_2__ {int remote; } ;
struct pppox_sock {TYPE_1__ pppoe_pa; int num; struct net_device* pppoe_dev; } ;
struct pppoe_hdr {int ver; int type; int length; int sid; scalar_t__ code; } ;
struct net_device {int dummy; } ;


 int ETH_P_PPP_SES ;
 scalar_t__ LL_RESERVED_SPACE (struct net_device*) ;
 int PPPOX_CONNECTED ;
 int SOCK_DEAD ;
 int __skb_push (struct sk_buff*,int) ;
 int cpu_to_be16 (int ) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int ,int *,int) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int htons (int) ;
 int kfree_skb (struct sk_buff*) ;
 struct pppoe_hdr* pppoe_hdr (struct sk_buff*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,scalar_t__) ;
 int skb_reset_network_header (struct sk_buff*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static int __pppoe_xmit(struct sock *sk, struct sk_buff *skb)
{
 struct pppox_sock *po = pppox_sk(sk);
 struct net_device *dev = po->pppoe_dev;
 struct pppoe_hdr *ph;
 int data_len = skb->len;
 if (sock_flag(sk, SOCK_DEAD) || !(sk->sk_state & PPPOX_CONNECTED))
  goto abort;

 if (!dev)
  goto abort;




 if (skb_cow_head(skb, LL_RESERVED_SPACE(dev) + sizeof(*ph)))
  goto abort;

 __skb_push(skb, sizeof(*ph));
 skb_reset_network_header(skb);

 ph = pppoe_hdr(skb);
 ph->ver = 1;
 ph->type = 1;
 ph->code = 0;
 ph->sid = po->num;
 ph->length = htons(data_len);

 skb->protocol = cpu_to_be16(ETH_P_PPP_SES);
 skb->dev = dev;

 dev_hard_header(skb, dev, ETH_P_PPP_SES,
   po->pppoe_pa.remote, ((void*)0), data_len);

 dev_queue_xmit(skb);
 return 1;

abort:
 kfree_skb(skb);
 return 1;
}
