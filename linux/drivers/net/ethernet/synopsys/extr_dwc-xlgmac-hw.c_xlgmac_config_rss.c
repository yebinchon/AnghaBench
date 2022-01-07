
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rss; } ;
struct xlgmac_pdata {TYPE_2__* netdev; TYPE_1__ hw_feat; } ;
struct TYPE_4__ {int features; } ;


 int NETIF_F_RXHASH ;
 int netdev_err (TYPE_2__*,char*) ;
 int xlgmac_disable_rss (struct xlgmac_pdata*) ;
 int xlgmac_enable_rss (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_config_rss(struct xlgmac_pdata *pdata)
{
 int ret;

 if (!pdata->hw_feat.rss)
  return;

 if (pdata->netdev->features & NETIF_F_RXHASH)
  ret = xlgmac_enable_rss(pdata);
 else
  ret = xlgmac_disable_rss(pdata);

 if (ret)
  netdev_err(pdata->netdev,
      "error configuring RSS, RSS disabled\n");
}
