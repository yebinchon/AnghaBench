
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_priv {int have_rekey_data; int mutex; int replay_ctr; int kck; int kek; TYPE_1__* contexts; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_gtk_rekey_data {int replay_ctr; int kck; int kek; } ;
typedef int __be64 ;
struct TYPE_4__ {scalar_t__ swcrypto; } ;
struct TYPE_3__ {struct ieee80211_vif* vif; } ;


 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 size_t IWL_RXON_CTX_BSS ;
 int NL80211_KCK_LEN ;
 int NL80211_KEK_LEN ;
 int be64_to_cpup (int *) ;
 int cpu_to_le64 (int ) ;
 TYPE_2__ iwlwifi_mod_params ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwlagn_mac_set_rekey_data(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct cfg80211_gtk_rekey_data *data)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);

 if (iwlwifi_mod_params.swcrypto)
  return;

 IWL_DEBUG_MAC80211(priv, "enter\n");
 mutex_lock(&priv->mutex);

 if (priv->contexts[IWL_RXON_CTX_BSS].vif != vif)
  goto out;

 memcpy(priv->kek, data->kek, NL80211_KEK_LEN);
 memcpy(priv->kck, data->kck, NL80211_KCK_LEN);
 priv->replay_ctr =
  cpu_to_le64(be64_to_cpup((__be64 *)&data->replay_ctr));
 priv->have_rekey_data = 1;

 out:
 mutex_unlock(&priv->mutex);
 IWL_DEBUG_MAC80211(priv, "leave\n");
}
