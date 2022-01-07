
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ duplex; int speed; scalar_t__ link; } ;
struct xgbe_prv_data {int netdev; TYPE_1__ phy; } ;


 scalar_t__ DUPLEX_FULL ;
 int netdev_info (int ,char*,...) ;
 int xgbe_phy_fc_string (struct xgbe_prv_data*) ;
 int xgbe_phy_speed_string (int ) ;

__attribute__((used)) static void xgbe_phy_print_status(struct xgbe_prv_data *pdata)
{
 if (pdata->phy.link)
  netdev_info(pdata->netdev,
       "Link is Up - %s/%s - flow control %s\n",
       xgbe_phy_speed_string(pdata->phy.speed),
       pdata->phy.duplex == DUPLEX_FULL ? "Full" : "Half",
       xgbe_phy_fc_string(pdata));
 else
  netdev_info(pdata->netdev, "Link is Down\n");
}
