
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct ppp {int dummy; } ;
struct channel {int dummy; } ;


 scalar_t__ PPP_MP ;
 scalar_t__ PPP_PROTO (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ppp_receive_error (struct ppp*) ;
 int ppp_receive_mp_frame (struct ppp*,struct sk_buff*,struct channel*) ;
 int ppp_receive_nonmp_frame (struct ppp*,struct sk_buff*) ;
 int skb_checksum_complete_unset (struct sk_buff*) ;

__attribute__((used)) static void
ppp_receive_frame(struct ppp *ppp, struct sk_buff *skb, struct channel *pch)
{

 if (skb->len > 0) {
  skb_checksum_complete_unset(skb);






   ppp_receive_nonmp_frame(ppp, skb);
 } else {
  kfree_skb(skb);
  ppp_receive_error(ppp);
 }
}
