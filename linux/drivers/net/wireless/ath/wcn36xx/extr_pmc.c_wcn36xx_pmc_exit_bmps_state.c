
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_vif {scalar_t__ pw_state; } ;
struct wcn36xx {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int EALREADY ;
 scalar_t__ WCN36XX_BMPS ;
 int WCN36XX_DBG_PMC ;
 scalar_t__ WCN36XX_FULL_POWER ;
 int wcn36xx_dbg (int ,char*) ;
 int wcn36xx_smd_exit_bmps (struct wcn36xx*,struct ieee80211_vif*) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;

int wcn36xx_pmc_exit_bmps_state(struct wcn36xx *wcn,
    struct ieee80211_vif *vif)
{
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);

 if (WCN36XX_BMPS != vif_priv->pw_state) {

  wcn36xx_dbg(WCN36XX_DBG_PMC,
       "Not in BMPS mode, no need to exit\n");
  return -EALREADY;
 }
 wcn36xx_smd_exit_bmps(wcn, vif);
 vif_priv->pw_state = WCN36XX_FULL_POWER;
 return 0;
}
