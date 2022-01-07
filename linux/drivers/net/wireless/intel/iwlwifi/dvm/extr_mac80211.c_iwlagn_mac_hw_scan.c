
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {scalar_t__ scan_type; int mutex; struct ieee80211_vif* scan_vif; struct cfg80211_scan_request* scan_request; } ;
struct ieee80211_vif {int dummy; } ;
struct cfg80211_scan_request {scalar_t__ n_channels; TYPE_1__** channels; } ;
struct ieee80211_scan_request {struct cfg80211_scan_request req; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int band; } ;


 int EINVAL ;
 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 int IWL_DEBUG_SCAN (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 scalar_t__ IWL_SCAN_NORMAL ;
 int iwl_scan_initiate (struct iwl_priv*,struct ieee80211_vif*,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwlagn_mac_hw_scan(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_scan_request *hw_req)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 struct cfg80211_scan_request *req = &hw_req->req;
 int ret;

 IWL_DEBUG_MAC80211(priv, "enter\n");

 if (req->n_channels == 0)
  return -EINVAL;

 mutex_lock(&priv->mutex);





 if (priv->scan_type != IWL_SCAN_NORMAL) {
  IWL_DEBUG_SCAN(priv,
          "SCAN request during internal scan - defer\n");
  priv->scan_request = req;
  priv->scan_vif = vif;
  ret = 0;
 } else {
  priv->scan_request = req;
  priv->scan_vif = vif;




  ret = iwl_scan_initiate(priv, vif, IWL_SCAN_NORMAL,
     req->channels[0]->band);
  if (ret) {
   priv->scan_request = ((void*)0);
   priv->scan_vif = ((void*)0);
  }
 }

 IWL_DEBUG_MAC80211(priv, "leave\n");

 mutex_unlock(&priv->mutex);

 return ret;
}
