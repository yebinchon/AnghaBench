
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct nicvf {TYPE_1__* pnicvf; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_2__ {int netdev; } ;


 int NIC_QSET_SQ_0_7_DOOR ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netdev_tx_sent_queue (struct netdev_queue*,int ) ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int smp_wmb () ;

__attribute__((used)) static inline void nicvf_sq_doorbell(struct nicvf *nic, struct sk_buff *skb,
         int sq_num, int desc_cnt)
{
 struct netdev_queue *txq;

 txq = netdev_get_tx_queue(nic->pnicvf->netdev,
      skb_get_queue_mapping(skb));

 netdev_tx_sent_queue(txq, skb->len);


 smp_wmb();


 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_DOOR,
         sq_num, desc_cnt);
}
