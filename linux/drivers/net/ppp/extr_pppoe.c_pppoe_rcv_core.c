
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct sk_buff {scalar_t__ pkt_type; } ;
struct pppox_sock {int pppoe_relay; int chan; } ;
struct TYPE_4__ {int sk_state; } ;


 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 scalar_t__ PACKET_OTHERHOST ;
 int PPPOX_BOUND ;
 int PPPOX_CONNECTED ;
 int PPPOX_RELAY ;
 int __pppoe_xmit (TYPE_1__*,struct sk_buff*) ;
 struct pppox_sock* get_item_by_addr (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int ppp_input (int *,struct sk_buff*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 TYPE_1__* sk_pppox (struct pppox_sock*) ;
 int sock_net (struct sock*) ;
 int sock_put (TYPE_1__*) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int pppoe_rcv_core(struct sock *sk, struct sk_buff *skb)
{
 struct pppox_sock *po = pppox_sk(sk);
 struct pppox_sock *relay_po;






 if (skb->pkt_type == PACKET_OTHERHOST)
  goto abort_kfree;

 if (sk->sk_state & PPPOX_BOUND) {
  ppp_input(&po->chan, skb);
 } else if (sk->sk_state & PPPOX_RELAY) {
  relay_po = get_item_by_addr(sock_net(sk),
         &po->pppoe_relay);
  if (relay_po == ((void*)0))
   goto abort_kfree;

  if ((sk_pppox(relay_po)->sk_state & PPPOX_CONNECTED) == 0)
   goto abort_put;

  if (!__pppoe_xmit(sk_pppox(relay_po), skb))
   goto abort_put;

  sock_put(sk_pppox(relay_po));
 } else {
  if (sock_queue_rcv_skb(sk, skb))
   goto abort_kfree;
 }

 return NET_RX_SUCCESS;

abort_put:
 sock_put(sk_pppox(relay_po));

abort_kfree:
 kfree_skb(skb);
 return NET_RX_DROP;
}
