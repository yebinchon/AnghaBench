
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int get; int msg; } ;
union nic_mbx {TYPE_1__ pfc; } ;
struct TYPE_4__ {int fc_tx; int fc_rx; int autoneg; } ;
struct nicvf {scalar_t__ mac_type; TYPE_2__ pfc; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;


 scalar_t__ BGX_MODE_QSGMII ;
 scalar_t__ BGX_MODE_RGMII ;
 scalar_t__ BGX_MODE_SGMII ;
 int NIC_MBOX_MSG_PFC ;
 struct nicvf* netdev_priv (struct net_device*) ;
 int nicvf_send_msg_to_pf (struct nicvf*,union nic_mbx*) ;

__attribute__((used)) static void nicvf_get_pauseparam(struct net_device *dev,
     struct ethtool_pauseparam *pause)
{
 struct nicvf *nic = netdev_priv(dev);
 union nic_mbx mbx = {};


 if ((nic->mac_type == BGX_MODE_SGMII) ||
     (nic->mac_type == BGX_MODE_QSGMII) ||
     (nic->mac_type == BGX_MODE_RGMII))
  return;

 mbx.pfc.msg = NIC_MBOX_MSG_PFC;
 mbx.pfc.get = 1;
 if (!nicvf_send_msg_to_pf(nic, &mbx)) {
  pause->autoneg = nic->pfc.autoneg;
  pause->rx_pause = nic->pfc.fc_rx;
  pause->tx_pause = nic->pfc.fc_tx;
 }
}
