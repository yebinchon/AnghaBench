
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ link; scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ speed; int pause_autoneg; } ;
struct TYPE_3__ {int (* config_rx_flow_control ) (struct xgbe_prv_data*) ;int (* config_tx_flow_control ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ phy_speed; scalar_t__ phy_link; TYPE_2__ phy; TYPE_1__ hw_if; int pause_autoneg; } ;


 scalar_t__ SPEED_UNKNOWN ;
 scalar_t__ netif_msg_link (struct xgbe_prv_data*) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int xgbe_phy_print_status (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_adjust_link(struct xgbe_prv_data *pdata)
{
 int new_state = 0;

 if (pdata->phy.link) {

  pdata->pause_autoneg = pdata->phy.pause_autoneg;

  if (pdata->tx_pause != pdata->phy.tx_pause) {
   new_state = 1;
   pdata->tx_pause = pdata->phy.tx_pause;
   pdata->hw_if.config_tx_flow_control(pdata);
  }

  if (pdata->rx_pause != pdata->phy.rx_pause) {
   new_state = 1;
   pdata->rx_pause = pdata->phy.rx_pause;
   pdata->hw_if.config_rx_flow_control(pdata);
  }


  if (pdata->phy_speed != pdata->phy.speed) {
   new_state = 1;
   pdata->phy_speed = pdata->phy.speed;
  }

  if (pdata->phy_link != pdata->phy.link) {
   new_state = 1;
   pdata->phy_link = pdata->phy.link;
  }
 } else if (pdata->phy_link) {
  new_state = 1;
  pdata->phy_link = 0;
  pdata->phy_speed = SPEED_UNKNOWN;
 }

 if (new_state && netif_msg_link(pdata))
  xgbe_phy_print_status(pdata);
}
