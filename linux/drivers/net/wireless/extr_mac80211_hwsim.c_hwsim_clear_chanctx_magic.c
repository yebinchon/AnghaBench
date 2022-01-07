
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_chanctx_conf {scalar_t__ drv_priv; } ;
struct hwsim_chanctx_priv {scalar_t__ magic; } ;



__attribute__((used)) static inline void hwsim_clear_chanctx_magic(struct ieee80211_chanctx_conf *c)
{
 struct hwsim_chanctx_priv *cp = (void *)c->drv_priv;
 cp->magic = 0;
}
