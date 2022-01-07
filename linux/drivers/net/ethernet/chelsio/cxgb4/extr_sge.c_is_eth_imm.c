
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ encapsulation; } ;
struct cpl_tx_tnl_lso {int dummy; } ;
struct cpl_tx_pkt_lso_core {int dummy; } ;
struct cpl_tx_pkt_core {int dummy; } ;
struct cpl_tx_pkt {int dummy; } ;
struct TYPE_2__ {scalar_t__ gso_size; } ;


 unsigned int CHELSIO_T5 ;
 int MAX_IMM_TX_PKT_LEN ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static inline int is_eth_imm(const struct sk_buff *skb, unsigned int chip_ver)
{
 int hdrlen = 0;

 if (skb->encapsulation && skb_shinfo(skb)->gso_size &&
     chip_ver > CHELSIO_T5) {
  hdrlen = sizeof(struct cpl_tx_tnl_lso);
  hdrlen += sizeof(struct cpl_tx_pkt_core);
 } else {
  hdrlen = skb_shinfo(skb)->gso_size ?
    sizeof(struct cpl_tx_pkt_lso_core) : 0;
  hdrlen += sizeof(struct cpl_tx_pkt);
 }
 if (skb->len <= MAX_IMM_TX_PKT_LEN - hdrlen)
  return hdrlen;
 return 0;
}
