
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rss; } ;
struct xgbe_prv_data {TYPE_2__* netdev; TYPE_1__ hw_feat; } ;
struct TYPE_4__ {int features; } ;


 int NETIF_F_RXHASH ;
 int netdev_err (TYPE_2__*,char*) ;
 int xgbe_disable_rss (struct xgbe_prv_data*) ;
 int xgbe_enable_rss (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_config_rss(struct xgbe_prv_data *pdata)
{
 int ret;

 if (!pdata->hw_feat.rss)
  return;

 if (pdata->netdev->features & NETIF_F_RXHASH)
  ret = xgbe_enable_rss(pdata);
 else
  ret = xgbe_disable_rss(pdata);

 if (ret)
  netdev_err(pdata->netdev,
      "error configuring RSS, RSS disabled\n");
}
