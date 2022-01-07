
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {int wiphy; } ;
struct TYPE_4__ {int center_freq2; int center_freq1; int width; TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct TYPE_3__ {int center_freq; } ;


 int hwsim_set_chanctx_magic (struct ieee80211_chanctx_conf*) ;
 int wiphy_dbg (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int mac80211_hwsim_add_chanctx(struct ieee80211_hw *hw,
          struct ieee80211_chanctx_conf *ctx)
{
 hwsim_set_chanctx_magic(ctx);
 wiphy_dbg(hw->wiphy,
    "add channel context control: %d MHz/width: %d/cfreqs:%d/%d MHz\n",
    ctx->def.chan->center_freq, ctx->def.width,
    ctx->def.center_freq1, ctx->def.center_freq2);
 return 0;
}
