
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ tx_pause; scalar_t__ rx_pause; } ;



__attribute__((used)) static const char *xgbe_phy_fc_string(struct xgbe_prv_data *pdata)
{
 if (pdata->tx_pause && pdata->rx_pause)
  return "rx/tx";
 else if (pdata->rx_pause)
  return "rx";
 else if (pdata->tx_pause)
  return "tx";
 else
  return "off";
}
