
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_vif {int const type; int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int op_flags; } ;
struct ath9k_htc_vif {int index; } ;
struct ath9k_htc_target_vif {int index; int rtsthreshold; int opmode; int myaddr; } ;
struct ath9k_htc_priv {int vif_slot; int mutex; TYPE_1__* ah; int nvifs; } ;
struct TYPE_3__ {int const opmode; } ;


 int ATH_OP_ANI_RUN ;
 int CONFIG ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int HTC_M_HOSTAP ;
 int HTC_M_IBSS ;
 int HTC_M_STA ;
 int HTC_M_WDS ;
 int INC_VIF (struct ath9k_htc_priv*,int const) ;




 int WMI_CMD_BUF (int ,struct ath9k_htc_target_vif*) ;
 int WMI_VAP_CREATE_CMDID ;
 int WMI_VAP_REMOVE_CMDID ;
 int ath9k_htc_add_station (struct ath9k_htc_priv*,struct ieee80211_vif*,int *) ;
 int ath9k_htc_assign_bslot (struct ath9k_htc_priv*,struct ieee80211_vif*) ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_htc_set_mac_bssid_mask (struct ath9k_htc_priv*,struct ieee80211_vif*) ;
 int ath9k_htc_set_opmode (struct ath9k_htc_priv*) ;
 int ath9k_htc_start_ani (struct ath9k_htc_priv*) ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath9k_hw_set_tsfadjust (TYPE_1__*,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int const,int) ;
 int ath_err (struct ath_common*,char*,int const) ;
 int cpu_to_be16 (int) ;
 int ffz (int) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct ath9k_htc_target_vif*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ath9k_htc_add_interface(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath9k_htc_vif *avp = (void *)vif->drv_priv;
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_target_vif hvif;
 int ret = 0;
 u8 cmd_rsp;

 mutex_lock(&priv->mutex);

 ath9k_htc_ps_wakeup(priv);
 memset(&hvif, 0, sizeof(struct ath9k_htc_target_vif));
 memcpy(&hvif.myaddr, vif->addr, ETH_ALEN);

 switch (vif->type) {
 case 128:
  hvif.opmode = HTC_M_STA;
  break;
 case 131:
  hvif.opmode = HTC_M_IBSS;
  break;
 case 130:
  hvif.opmode = HTC_M_HOSTAP;
  break;
 case 129:
  hvif.opmode = HTC_M_WDS;
  break;
 default:
  ath_err(common,
   "Interface type %d not yet supported\n", vif->type);
  ret = -EOPNOTSUPP;
  goto out;
 }


 avp->index = hvif.index = ffz(priv->vif_slot);
 hvif.rtsthreshold = cpu_to_be16(2304);
 WMI_CMD_BUF(WMI_VAP_CREATE_CMDID, &hvif);
 if (ret)
  goto out;





 ret = ath9k_htc_add_station(priv, vif, ((void*)0));
 if (ret) {
  WMI_CMD_BUF(WMI_VAP_REMOVE_CMDID, &hvif);
  goto out;
 }

 ath9k_htc_set_mac_bssid_mask(priv, vif);

 priv->vif_slot |= (1 << avp->index);
 priv->nvifs++;

 INC_VIF(priv, vif->type);

 if ((vif->type == 130) ||
     (vif->type == 129) ||
     (vif->type == 131))
  ath9k_htc_assign_bslot(priv, vif);

 ath9k_htc_set_opmode(priv);

 if ((priv->ah->opmode == 130) &&
     !test_bit(ATH_OP_ANI_RUN, &common->op_flags)) {
  ath9k_hw_set_tsfadjust(priv->ah, 1);
  ath9k_htc_start_ani(priv);
 }

 ath_dbg(common, CONFIG, "Attach a VIF of type: %d at idx: %d\n",
  vif->type, avp->index);

out:
 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);

 return ret;
}
