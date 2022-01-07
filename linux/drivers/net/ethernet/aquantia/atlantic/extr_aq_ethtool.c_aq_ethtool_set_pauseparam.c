
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct aq_nic_s {int fwreq_mutex; TYPE_3__* aq_hw; TYPE_2__* aq_fw_ops; } ;
struct TYPE_6__ {TYPE_1__* aq_nic_cfg; } ;
struct TYPE_5__ {int (* set_flow_control ) (TYPE_3__*) ;} ;
struct TYPE_4__ {int flow_control; } ;


 int AQ_NIC_FC_RX ;
 int AQ_NIC_FC_TX ;
 scalar_t__ AUTONEG_ENABLE ;
 int EOPNOTSUPP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int aq_ethtool_set_pauseparam(struct net_device *ndev,
         struct ethtool_pauseparam *pause)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 int err = 0;

 if (!aq_nic->aq_fw_ops->set_flow_control)
  return -EOPNOTSUPP;

 if (pause->autoneg == AUTONEG_ENABLE)
  return -EOPNOTSUPP;

 if (pause->rx_pause)
  aq_nic->aq_hw->aq_nic_cfg->flow_control |= AQ_NIC_FC_RX;
 else
  aq_nic->aq_hw->aq_nic_cfg->flow_control &= ~AQ_NIC_FC_RX;

 if (pause->tx_pause)
  aq_nic->aq_hw->aq_nic_cfg->flow_control |= AQ_NIC_FC_TX;
 else
  aq_nic->aq_hw->aq_nic_cfg->flow_control &= ~AQ_NIC_FC_TX;

 mutex_lock(&aq_nic->fwreq_mutex);
 err = aq_nic->aq_fw_ops->set_flow_control(aq_nic->aq_hw);
 mutex_unlock(&aq_nic->fwreq_mutex);

 return err;
}
