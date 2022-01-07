
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t3cdev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sge_qset {int * txq; } ;
struct TYPE_2__ {struct sge_qset* qs; } ;
struct adapter {TYPE_1__ sge; } ;


 size_t TXQ_CTRL ;
 size_t TXQ_OFLD ;
 int ctrl_xmit (struct adapter*,int *,struct sk_buff*) ;
 int is_ctrl_pkt (struct sk_buff*) ;
 int ofld_xmit (struct adapter*,int *,struct sk_buff*) ;
 size_t queue_set (struct sk_buff*) ;
 struct adapter* tdev2adap (struct t3cdev*) ;
 scalar_t__ unlikely (int ) ;

int t3_offload_tx(struct t3cdev *tdev, struct sk_buff *skb)
{
 struct adapter *adap = tdev2adap(tdev);
 struct sge_qset *qs = &adap->sge.qs[queue_set(skb)];

 if (unlikely(is_ctrl_pkt(skb)))
  return ctrl_xmit(adap, &qs->txq[TXQ_CTRL], skb);

 return ofld_xmit(adap, &qs->txq[TXQ_OFLD], skb);
}
