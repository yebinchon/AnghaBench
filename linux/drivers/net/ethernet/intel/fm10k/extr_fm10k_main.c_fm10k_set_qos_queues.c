
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fm10k_ring_feature {int indices; int mask; int limit; } ;
struct TYPE_3__ {int max_queues; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct fm10k_intfc {int num_rx_queues; int num_tx_queues; struct fm10k_ring_feature* ring_feature; TYPE_2__ hw; struct net_device* netdev; } ;


 int BIT (scalar_t__) ;
 size_t RING_F_QOS ;
 size_t RING_F_RSS ;
 scalar_t__ fls (int) ;
 int min_t (int ,int,int ) ;
 int netdev_get_num_tc (struct net_device*) ;
 int netdev_set_tc_queue (struct net_device*,int,int,int) ;
 int u16 ;

__attribute__((used)) static bool fm10k_set_qos_queues(struct fm10k_intfc *interface)
{
 struct net_device *dev = interface->netdev;
 struct fm10k_ring_feature *f;
 int rss_i, i;
 int pcs;


 pcs = netdev_get_num_tc(dev);

 if (pcs <= 1)
  return 0;


 f = &interface->ring_feature[RING_F_QOS];
 f->indices = pcs;
 f->mask = BIT(fls(pcs - 1)) - 1;


 rss_i = interface->hw.mac.max_queues / pcs;
 rss_i = BIT(fls(rss_i) - 1);


 f = &interface->ring_feature[RING_F_RSS];
 rss_i = min_t(u16, rss_i, f->limit);
 f->indices = rss_i;
 f->mask = BIT(fls(rss_i - 1)) - 1;


 for (i = 0; i < pcs; i++)
  netdev_set_tc_queue(dev, i, rss_i, rss_i * i);

 interface->num_rx_queues = rss_i * pcs;
 interface->num_tx_queues = rss_i * pcs;

 return 1;
}
