
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int ip_summed; int csum; int protocol; } ;
struct net_device {int dummy; } ;
struct ehea_port_res {TYPE_1__* port; } ;
struct ehea_cqe {int num_bytes_transfered; int status; int inet_checksum_value; } ;
struct TYPE_2__ {struct ehea_port_res* port_res; } ;


 int CHECKSUM_COMPLETE ;
 int CHECKSUM_UNNECESSARY ;
 int EHEA_CQE_BLIND_CKSUM ;
 int csum_unfold (int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_record_rx_queue (struct sk_buff*,int) ;

__attribute__((used)) static inline void ehea_fill_skb(struct net_device *dev,
     struct sk_buff *skb, struct ehea_cqe *cqe,
     struct ehea_port_res *pr)
{
 int length = cqe->num_bytes_transfered - 4;

 skb_put(skb, length);
 skb->protocol = eth_type_trans(skb, dev);



 if (cqe->status & EHEA_CQE_BLIND_CKSUM) {
  skb->ip_summed = CHECKSUM_COMPLETE;
  skb->csum = csum_unfold(~cqe->inet_checksum_value);
 } else
  skb->ip_summed = CHECKSUM_UNNECESSARY;

 skb_record_rx_queue(skb, pr - &pr->port->port_res[0]);
}
