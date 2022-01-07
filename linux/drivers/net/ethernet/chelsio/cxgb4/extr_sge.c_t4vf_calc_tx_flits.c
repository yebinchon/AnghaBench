
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct fw_eth_tx_pkt_vm_wr {int dummy; } ;
struct cpl_tx_pkt_lso_core {int dummy; } ;
struct cpl_tx_pkt_core {int dummy; } ;
struct cpl_tx_pkt {int dummy; } ;
typedef int __be64 ;
struct TYPE_2__ {scalar_t__ gso_size; scalar_t__ nr_frags; } ;


 unsigned int DIV_ROUND_UP (scalar_t__,int) ;
 unsigned int sgl_len (scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;
 scalar_t__ t4vf_is_eth_imm (struct sk_buff const*) ;

__attribute__((used)) static inline unsigned int t4vf_calc_tx_flits(const struct sk_buff *skb)
{
 unsigned int flits;





 if (t4vf_is_eth_imm(skb))
  return DIV_ROUND_UP(skb->len + sizeof(struct cpl_tx_pkt),
        sizeof(__be64));
 flits = sgl_len(skb_shinfo(skb)->nr_frags + 1);
 if (skb_shinfo(skb)->gso_size)
  flits += (sizeof(struct fw_eth_tx_pkt_vm_wr) +
     sizeof(struct cpl_tx_pkt_lso_core) +
     sizeof(struct cpl_tx_pkt_core)) / sizeof(__be64);
 else
  flits += (sizeof(struct fw_eth_tx_pkt_vm_wr) +
     sizeof(struct cpl_tx_pkt_core)) / sizeof(__be64);
 return flits;
}
