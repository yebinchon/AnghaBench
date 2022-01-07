
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int hw; scalar_t__ dfs_block_radar_events; } ;


 int ATH10K_DBG_REGULATORY ;
 int ATH10K_DFS_STAT_INC (struct ath10k*,int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_info (struct ath10k*,char*) ;
 int ieee80211_radar_detected (int ) ;
 int radar_detected ;

__attribute__((used)) static void ath10k_radar_detected(struct ath10k *ar)
{
 ath10k_dbg(ar, ATH10K_DBG_REGULATORY, "dfs radar detected\n");
 ATH10K_DFS_STAT_INC(ar, radar_detected);




 if (ar->dfs_block_radar_events)
  ath10k_info(ar, "DFS Radar detected, but ignored as requested\n");
 else
  ieee80211_radar_detected(ar->hw);
}
