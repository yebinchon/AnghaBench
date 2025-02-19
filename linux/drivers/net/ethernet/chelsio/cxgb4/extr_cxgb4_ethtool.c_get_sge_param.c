
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sge {TYPE_6__* ethtxq; TYPE_4__* ethrxq; } ;
struct port_info {size_t first_qset; TYPE_1__* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; scalar_t__ rx_jumbo_pending; int rx_mini_pending; scalar_t__ rx_pending; int tx_max_pending; scalar_t__ rx_jumbo_max_pending; int rx_mini_max_pending; int rx_max_pending; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_12__ {TYPE_5__ q; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_10__ {TYPE_3__ rspq; TYPE_2__ fl; } ;
struct TYPE_7__ {struct sge sge; } ;


 int MAX_RSPQ_ENTRIES ;
 int MAX_RX_BUFFERS ;
 int MAX_TXQ_ENTRIES ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void get_sge_param(struct net_device *dev, struct ethtool_ringparam *e)
{
 const struct port_info *pi = netdev_priv(dev);
 const struct sge *s = &pi->adapter->sge;

 e->rx_max_pending = MAX_RX_BUFFERS;
 e->rx_mini_max_pending = MAX_RSPQ_ENTRIES;
 e->rx_jumbo_max_pending = 0;
 e->tx_max_pending = MAX_TXQ_ENTRIES;

 e->rx_pending = s->ethrxq[pi->first_qset].fl.size - 8;
 e->rx_mini_pending = s->ethrxq[pi->first_qset].rspq.size;
 e->rx_jumbo_pending = 0;
 e->tx_pending = s->ethtxq[pi->first_qset].q.size;
}
