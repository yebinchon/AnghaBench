
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int adaptive_rx; } ;
struct sge_eth_rxq {TYPE_1__ rspq; } ;
struct port_info {size_t first_qset; int nqsets; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct sge_eth_rxq* ethrxq; } ;
struct adapter {TYPE_2__ sge; } ;


 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int set_adaptive_rx_setting(struct net_device *dev, int adaptive_rx)
{
 int i;
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adap = pi->adapter;
 struct sge_eth_rxq *q = &adap->sge.ethrxq[pi->first_qset];

 for (i = 0; i < pi->nqsets; i++, q++)
  q->rspq.adaptive_rx = adaptive_rx;

 return 0;
}
