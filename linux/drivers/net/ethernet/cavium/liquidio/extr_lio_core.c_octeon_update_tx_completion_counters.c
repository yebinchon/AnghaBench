
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct octnet_buf_free_info {struct sk_buff* skb; } ;
struct octeon_soft_command {struct sk_buff* callback_arg; } ;







void octeon_update_tx_completion_counters(void *buf, int reqtype,
       unsigned int *pkts_compl,
       unsigned int *bytes_compl)
{
 struct octnet_buf_free_info *finfo;
 struct sk_buff *skb = ((void*)0);
 struct octeon_soft_command *sc;

 switch (reqtype) {
 case 131:
 case 130:
  finfo = buf;
  skb = finfo->skb;
  break;

 case 128:
 case 129:
  sc = buf;
  skb = sc->callback_arg;
  break;

 default:
  return;
 }

 (*pkts_compl)++;
 *bytes_compl += skb->len;
}
