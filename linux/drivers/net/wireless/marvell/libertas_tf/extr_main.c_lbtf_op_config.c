
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct lbtf_private {scalar_t__ cur_freq; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct lbtf_private* priv; } ;
struct TYPE_3__ {scalar_t__ center_freq; int hw_value; } ;


 int LBTF_DEB_MACOPS ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_set_channel (struct lbtf_private*,int ) ;

__attribute__((used)) static int lbtf_op_config(struct ieee80211_hw *hw, u32 changed)
{
 struct lbtf_private *priv = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;
 lbtf_deb_enter(LBTF_DEB_MACOPS);

 if (conf->chandef.chan->center_freq != priv->cur_freq) {
  priv->cur_freq = conf->chandef.chan->center_freq;
  lbtf_set_channel(priv, conf->chandef.chan->hw_value);
 }
 lbtf_deb_leave(LBTF_DEB_MACOPS);
 return 0;
}
