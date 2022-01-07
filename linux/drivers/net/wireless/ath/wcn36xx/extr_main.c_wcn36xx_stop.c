
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int hal_buf; int scan_lock; int * scan_req; int hw; int scan_work; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;
struct cfg80211_scan_info {int aborted; } ;


 int WCN36XX_DBG_MAC ;
 int cancel_work_sync (int *) ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*) ;
 int wcn36xx_debugfs_exit (struct wcn36xx*) ;
 int wcn36xx_dxe_deinit (struct wcn36xx*) ;
 int wcn36xx_dxe_free_ctl_blks (struct wcn36xx*) ;
 int wcn36xx_dxe_free_mem_pools (struct wcn36xx*) ;
 int wcn36xx_smd_close (struct wcn36xx*) ;
 int wcn36xx_smd_stop (struct wcn36xx*) ;

__attribute__((used)) static void wcn36xx_stop(struct ieee80211_hw *hw)
{
 struct wcn36xx *wcn = hw->priv;

 wcn36xx_dbg(WCN36XX_DBG_MAC, "mac stop\n");

 cancel_work_sync(&wcn->scan_work);

 mutex_lock(&wcn->scan_lock);
 if (wcn->scan_req) {
  struct cfg80211_scan_info scan_info = {
   .aborted = 1,
  };

  ieee80211_scan_completed(wcn->hw, &scan_info);
 }
 wcn->scan_req = ((void*)0);
 mutex_unlock(&wcn->scan_lock);

 wcn36xx_debugfs_exit(wcn);
 wcn36xx_smd_stop(wcn);
 wcn36xx_dxe_deinit(wcn);
 wcn36xx_smd_close(wcn);

 wcn36xx_dxe_free_mem_pools(wcn);
 wcn36xx_dxe_free_ctl_blks(wcn);

 kfree(wcn->hal_buf);
}
