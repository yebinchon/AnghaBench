
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int p2p; int type; int addr; scalar_t__ drv_priv; } ;
struct hwsim_vif_priv {scalar_t__ magic; } ;


 scalar_t__ HWSIM_VIF_MAGIC ;
 int WARN (int,char*,struct ieee80211_vif*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static inline void hwsim_check_magic(struct ieee80211_vif *vif)
{
 struct hwsim_vif_priv *vp = (void *)vif->drv_priv;
 WARN(vp->magic != HWSIM_VIF_MAGIC,
      "Invalid VIF (%p) magic %#x, %pM, %d/%d\n",
      vif, vp->magic, vif->addr, vif->type, vif->p2p);
}
