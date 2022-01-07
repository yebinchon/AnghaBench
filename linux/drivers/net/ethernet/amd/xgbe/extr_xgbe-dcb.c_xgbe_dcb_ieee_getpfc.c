
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tc_cnt; } ;
struct xgbe_prv_data {TYPE_2__* pfc; TYPE_1__ hw_feat; } ;
struct net_device {int dummy; } ;
struct ieee_pfc {int delay; int mbc; int pfc_en; int pfc_cap; } ;
struct TYPE_4__ {int delay; int mbc; int pfc_en; } ;


 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static int xgbe_dcb_ieee_getpfc(struct net_device *netdev,
    struct ieee_pfc *pfc)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);


 pfc->pfc_cap = pdata->hw_feat.tc_cnt;

 if (pdata->pfc) {
  pfc->pfc_en = pdata->pfc->pfc_en;
  pfc->mbc = pdata->pfc->mbc;
  pfc->delay = pdata->pfc->delay;
 }

 return 0;
}
