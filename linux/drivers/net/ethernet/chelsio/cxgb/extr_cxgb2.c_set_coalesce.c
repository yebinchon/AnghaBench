
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {struct adapter* ml_priv; } ;
struct ethtool_coalesce {int rate_sample_interval; int use_adaptive_rx_coalesce; int rx_coalesce_usecs; } ;
struct TYPE_4__ {int sample_interval_usecs; int coalesce_enable; int rx_coalesce_usecs; } ;
struct TYPE_3__ {TYPE_2__ sge; } ;
struct adapter {TYPE_1__ params; int sge; } ;


 int t1_sge_set_coalesce_params (int ,TYPE_2__*) ;

__attribute__((used)) static int set_coalesce(struct net_device *dev, struct ethtool_coalesce *c)
{
 struct adapter *adapter = dev->ml_priv;

 adapter->params.sge.rx_coalesce_usecs = c->rx_coalesce_usecs;
 adapter->params.sge.coalesce_enable = c->use_adaptive_rx_coalesce;
 adapter->params.sge.sample_interval_usecs = c->rate_sample_interval;
 t1_sge_set_coalesce_params(adapter->sge, &adapter->params.sge);
 return 0;
}
