
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lbs_private {int assoc_bss; int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ MACREG_INT_CODE_MIC_ERR_MULTICAST ;
 int NL80211_KEYTYPE_GROUP ;
 int NL80211_KEYTYPE_PAIRWISE ;
 int cfg80211_michael_mic_failure (int ,int ,int ,int,int *,int ) ;

void lbs_send_mic_failureevent(struct lbs_private *priv, u32 event)
{
 cfg80211_michael_mic_failure(priv->dev,
  priv->assoc_bss,
  event == MACREG_INT_CODE_MIC_ERR_MULTICAST ?
   NL80211_KEYTYPE_GROUP :
   NL80211_KEYTYPE_PAIRWISE,
  -1,
  ((void*)0),
  GFP_KERNEL);
}
