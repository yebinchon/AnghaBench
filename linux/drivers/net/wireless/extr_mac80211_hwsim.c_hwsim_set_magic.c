
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct hwsim_vif_priv {int magic; } ;


 int HWSIM_VIF_MAGIC ;

__attribute__((used)) static inline void hwsim_set_magic(struct ieee80211_vif *vif)
{
 struct hwsim_vif_priv *vp = (void *)vif->drv_priv;
 vp->magic = HWSIM_VIF_MAGIC;
}
