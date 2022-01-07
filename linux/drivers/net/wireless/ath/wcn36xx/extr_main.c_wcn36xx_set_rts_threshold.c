
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wcn36xx {int conf_mutex; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;


 int WCN36XX_DBG_MAC ;
 int WCN36XX_HAL_CFG_RTS_THRESHOLD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,int ) ;
 int wcn36xx_smd_update_cfg (struct wcn36xx*,int ,int ) ;

__attribute__((used)) static int wcn36xx_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
{
 struct wcn36xx *wcn = hw->priv;
 wcn36xx_dbg(WCN36XX_DBG_MAC, "mac set RTS threshold %d\n", value);

 mutex_lock(&wcn->conf_mutex);
 wcn36xx_smd_update_cfg(wcn, WCN36XX_HAL_CFG_RTS_THRESHOLD, value);
 mutex_unlock(&wcn->conf_mutex);

 return 0;
}
