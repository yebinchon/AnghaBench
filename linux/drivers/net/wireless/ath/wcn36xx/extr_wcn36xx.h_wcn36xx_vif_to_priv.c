
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_vif {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;



__attribute__((used)) static inline
struct wcn36xx_vif *wcn36xx_vif_to_priv(struct ieee80211_vif *vif)
{
 return (struct wcn36xx_vif *) vif->drv_priv;
}
