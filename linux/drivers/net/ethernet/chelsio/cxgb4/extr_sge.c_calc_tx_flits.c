
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ encapsulation; scalar_t__ len; } ;
struct fw_eth_tx_pkt_wr {int dummy; } ;
struct cpl_tx_tnl_lso {int dummy; } ;
struct cpl_tx_pkt_lso_core {int dummy; } ;
struct cpl_tx_pkt_core {int dummy; } ;
typedef int __be64 ;
struct TYPE_2__ {scalar_t__ gso_size; scalar_t__ nr_frags; } ;


 unsigned int CHELSIO_T5 ;
 unsigned int DIV_ROUND_UP (scalar_t__,int) ;
 int is_eth_imm (struct sk_buff const*,unsigned int) ;
 unsigned int sgl_len (scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static inline unsigned int calc_tx_flits(const struct sk_buff *skb,
      unsigned int chip_ver)
{
 unsigned int flits;
 int hdrlen = is_eth_imm(skb, chip_ver);






 if (hdrlen)
  return DIV_ROUND_UP(skb->len + hdrlen, sizeof(__be64));
 flits = sgl_len(skb_shinfo(skb)->nr_frags + 1);
 if (skb_shinfo(skb)->gso_size) {
  if (skb->encapsulation && chip_ver > CHELSIO_T5)
   hdrlen = sizeof(struct fw_eth_tx_pkt_wr) +
     sizeof(struct cpl_tx_tnl_lso);
  else
   hdrlen = sizeof(struct fw_eth_tx_pkt_wr) +
     sizeof(struct cpl_tx_pkt_lso_core);

  hdrlen += sizeof(struct cpl_tx_pkt_core);
  flits += (hdrlen / sizeof(__be64));
 } else {
  flits += (sizeof(struct fw_eth_tx_pkt_wr) +
     sizeof(struct cpl_tx_pkt_core)) / sizeof(__be64);
 }
 return flits;
}
