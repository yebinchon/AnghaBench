
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge_rspq {int intr_params; size_t pktcnt_idx; } ;
struct port_info {size_t first_qset; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int tx_coalesce_usecs_irq; int use_adaptive_rx_coalesce; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;
struct TYPE_4__ {int * counter_val; TYPE_1__* ethrxq; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {struct sge_rspq rspq; } ;


 int QINTR_CNT_EN_F ;
 int get_adaptive_rx_setting (struct net_device*) ;
 int get_dbqtimer (struct net_device*) ;
 int get_dbqtimer_tick (struct net_device*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int qtimer_val (struct adapter const*,struct sge_rspq const*) ;

__attribute__((used)) static int get_coalesce(struct net_device *dev, struct ethtool_coalesce *c)
{
 const struct port_info *pi = netdev_priv(dev);
 const struct adapter *adap = pi->adapter;
 const struct sge_rspq *rq = &adap->sge.ethrxq[pi->first_qset].rspq;

 c->rx_coalesce_usecs = qtimer_val(adap, rq);
 c->rx_max_coalesced_frames = (rq->intr_params & QINTR_CNT_EN_F) ?
  adap->sge.counter_val[rq->pktcnt_idx] : 0;
 c->use_adaptive_rx_coalesce = get_adaptive_rx_setting(dev);
 c->tx_coalesce_usecs_irq = get_dbqtimer_tick(dev);
 c->tx_coalesce_usecs = get_dbqtimer(dev);
 return 0;
}
