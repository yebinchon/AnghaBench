
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_uld_txq_info {struct sge_uld_txq* uldtxq; } ;
struct sge_uld_txq {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct sge_uld_txq_info** uld_txq_info; } ;
struct adapter {TYPE_1__ sge; } ;


 size_t CXGB4_TX_OFLD ;
 int NET_XMIT_DROP ;
 int WARN_ON (int) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int net_xmit_eval (int) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int ofld_xmit_direct (struct sge_uld_txq*,void const*,unsigned int) ;
 scalar_t__ unlikely (int) ;

int cxgb4_immdata_send(struct net_device *dev, unsigned int idx,
         const void *src, unsigned int len)
{
 struct sge_uld_txq_info *txq_info;
 struct sge_uld_txq *txq;
 struct adapter *adap;
 int ret;

 adap = netdev2adap(dev);

 local_bh_disable();
 txq_info = adap->sge.uld_txq_info[CXGB4_TX_OFLD];
 if (unlikely(!txq_info)) {
  WARN_ON(1);
  local_bh_enable();
  return NET_XMIT_DROP;
 }
 txq = &txq_info->uldtxq[idx];

 ret = ofld_xmit_direct(txq, src, len);
 local_bh_enable();
 return net_xmit_eval(ret);
}
