
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_sta {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;



__attribute__((used)) static inline
struct wcn36xx_sta *wcn36xx_sta_to_priv(struct ieee80211_sta *sta)
{
 return (struct wcn36xx_sta *)sta->drv_priv;
}
