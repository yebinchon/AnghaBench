
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int cur; } ;
struct jme_adapter {TYPE_1__ dpi; int flags; } ;
struct ethtool_coalesce {int use_adaptive_rx_coalesce; scalar_t__ rx_max_coalesced_frames; scalar_t__ rx_coalesce_usecs; int tx_max_coalesced_frames; int tx_coalesce_usecs; } ;


 int JME_FLAG_POLL ;

 scalar_t__ PCC_P1_CNT ;
 scalar_t__ PCC_P1_TO ;

 scalar_t__ PCC_P2_CNT ;
 scalar_t__ PCC_P2_TO ;

 scalar_t__ PCC_P3_CNT ;
 scalar_t__ PCC_P3_TO ;
 int PCC_TX_CNT ;
 int PCC_TX_TO ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
jme_get_coalesce(struct net_device *netdev, struct ethtool_coalesce *ecmd)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 ecmd->tx_coalesce_usecs = PCC_TX_TO;
 ecmd->tx_max_coalesced_frames = PCC_TX_CNT;

 if (test_bit(JME_FLAG_POLL, &jme->flags)) {
  ecmd->use_adaptive_rx_coalesce = 0;
  ecmd->rx_coalesce_usecs = 0;
  ecmd->rx_max_coalesced_frames = 0;
  return 0;
 }

 ecmd->use_adaptive_rx_coalesce = 1;

 switch (jme->dpi.cur) {
 case 130:
  ecmd->rx_coalesce_usecs = PCC_P1_TO;
  ecmd->rx_max_coalesced_frames = PCC_P1_CNT;
  break;
 case 129:
  ecmd->rx_coalesce_usecs = PCC_P2_TO;
  ecmd->rx_max_coalesced_frames = PCC_P2_CNT;
  break;
 case 128:
  ecmd->rx_coalesce_usecs = PCC_P3_TO;
  ecmd->rx_max_coalesced_frames = PCC_P3_CNT;
  break;
 default:
  break;
 }

 return 0;
}
