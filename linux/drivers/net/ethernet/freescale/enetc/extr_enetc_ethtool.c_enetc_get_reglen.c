
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {int num_tx_rings; int num_rx_rings; TYPE_1__* si; } ;
struct enetc_hw {scalar_t__ port; } ;
struct TYPE_2__ {struct enetc_hw hw; } ;


 int ARRAY_SIZE (int ) ;
 int enetc_port_regs ;
 int enetc_rxbdr_regs ;
 int enetc_si_regs ;
 int enetc_txbdr_regs ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_get_reglen(struct net_device *ndev)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct enetc_hw *hw = &priv->si->hw;
 int len;

 len = ARRAY_SIZE(enetc_si_regs);
 len += ARRAY_SIZE(enetc_txbdr_regs) * priv->num_tx_rings;
 len += ARRAY_SIZE(enetc_rxbdr_regs) * priv->num_rx_rings;

 if (hw->port)
  len += ARRAY_SIZE(enetc_port_regs);

 len *= sizeof(u32) * 2;

 return len;
}
