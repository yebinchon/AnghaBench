
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct pch_can_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 scalar_t__ CAN_STATE_ERROR_ACTIVE ;
 scalar_t__ CAN_STATE_STOPPED ;
 int PCH_CAN_RUN ;
 struct pch_can_priv* netdev_priv (struct net_device*) ;
 int pch_can_reset (struct pch_can_priv*) ;
 int pch_can_set_optmode (struct pch_can_priv*) ;
 int pch_can_set_run_mode (struct pch_can_priv*,int ) ;
 int pch_can_set_rx_all (struct pch_can_priv*,int) ;
 int pch_can_set_tx_all (struct pch_can_priv*,int) ;
 int pch_set_bittiming (struct net_device*) ;

__attribute__((used)) static void pch_can_start(struct net_device *ndev)
{
 struct pch_can_priv *priv = netdev_priv(ndev);

 if (priv->can.state != CAN_STATE_STOPPED)
  pch_can_reset(priv);

 pch_set_bittiming(ndev);
 pch_can_set_optmode(priv);

 pch_can_set_tx_all(priv, 1);
 pch_can_set_rx_all(priv, 1);


 pch_can_set_run_mode(priv, PCH_CAN_RUN);

 priv->can.state = CAN_STATE_ERROR_ACTIVE;

 return;
}
