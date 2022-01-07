
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_common {int macaddr; } ;
struct ath9k_htc_target_vif {int index; int myaddr; } ;
struct ath9k_htc_priv {int mon_vif_idx; int vif_slot; int nvifs; int ah; } ;


 int ETH_ALEN ;
 int WMI_CMD_BUF (int ,struct ath9k_htc_target_vif*) ;
 int WMI_VAP_REMOVE_CMDID ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_err (struct ath_common*,char*,int) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct ath9k_htc_target_vif*,int ,int) ;

__attribute__((used)) static void __ath9k_htc_remove_monitor_interface(struct ath9k_htc_priv *priv)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_target_vif hvif;
 int ret = 0;
 u8 cmd_rsp;

 memset(&hvif, 0, sizeof(struct ath9k_htc_target_vif));
 memcpy(&hvif.myaddr, common->macaddr, ETH_ALEN);
 hvif.index = priv->mon_vif_idx;
 WMI_CMD_BUF(WMI_VAP_REMOVE_CMDID, &hvif);
 if (ret) {
  ath_err(common, "Unable to remove monitor interface at idx: %d\n",
   priv->mon_vif_idx);
 }

 priv->nvifs--;
 priv->vif_slot &= ~(1 << priv->mon_vif_idx);
}
