
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {TYPE_1__* qs; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {int * txq; } ;


 size_t TXQ_CTRL ;
 int ctrl_xmit (struct adapter*,int *,struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

int t3_mgmt_tx(struct adapter *adap, struct sk_buff *skb)
{
 int ret;
 local_bh_disable();
 ret = ctrl_xmit(adap, &adap->sge.qs[0].txq[TXQ_CTRL], skb);
 local_bh_enable();

 return ret;
}
