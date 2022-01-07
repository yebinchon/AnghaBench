
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_eth_rxq {int rspq; } ;
struct port_info {size_t first_qset; int nqsets; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct sge_eth_rxq* ethrxq; } ;
struct adapter {TYPE_1__ sge; } ;


 int cxgb4_set_rspq_intr_params (int *,unsigned int,unsigned int) ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int set_rx_intr_params(struct net_device *dev,
         unsigned int us, unsigned int cnt)
{
 int i, err;
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adap = pi->adapter;
 struct sge_eth_rxq *q = &adap->sge.ethrxq[pi->first_qset];

 for (i = 0; i < pi->nqsets; i++, q++) {
  err = cxgb4_set_rspq_intr_params(&q->rspq, us, cnt);
  if (err)
   return err;
 }
 return 0;
}
