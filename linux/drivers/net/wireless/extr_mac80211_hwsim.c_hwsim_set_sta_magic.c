
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct hwsim_sta_priv {int magic; } ;


 int HWSIM_STA_MAGIC ;

__attribute__((used)) static inline void hwsim_set_sta_magic(struct ieee80211_sta *sta)
{
 struct hwsim_sta_priv *sp = (void *)sta->drv_priv;
 sp->magic = HWSIM_STA_MAGIC;
}
