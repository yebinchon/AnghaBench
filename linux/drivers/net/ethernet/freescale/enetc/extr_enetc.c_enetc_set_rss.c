
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {int num_rx_rings; TYPE_1__* si; } ;
struct enetc_hw {int dummy; } ;
struct TYPE_2__ {struct enetc_hw hw; } ;


 int ENETC_SIMR ;
 int ENETC_SIMR_RSSE ;
 int ENETC_SIRBGCR ;
 int enetc_rd (struct enetc_hw*,int ) ;
 int enetc_wr (struct enetc_hw*,int ,int ) ;
 struct enetc_ndev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enetc_set_rss(struct net_device *ndev, int en)
{
 struct enetc_ndev_priv *priv = netdev_priv(ndev);
 struct enetc_hw *hw = &priv->si->hw;
 u32 reg;

 enetc_wr(hw, ENETC_SIRBGCR, priv->num_rx_rings);

 reg = enetc_rd(hw, ENETC_SIMR);
 reg &= ~ENETC_SIMR_RSSE;
 reg |= (en) ? ENETC_SIMR_RSSE : 0;
 enetc_wr(hw, ENETC_SIMR, reg);

 return 0;
}
