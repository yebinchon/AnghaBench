
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cfg80211_chan_def {int chan; } ;
struct mt76_dev {int main_chan; struct cfg80211_chan_def chandef; TYPE_2__* drv; int tx_wait; struct ieee80211_hw* hw; } ;
struct mt76_channel_state {int dummy; } ;
struct TYPE_3__ {int flags; struct cfg80211_chan_def chandef; } ;
struct ieee80211_hw {TYPE_1__ conf; } ;
struct TYPE_4__ {int (* update_survey ) (struct mt76_dev*) ;} ;


 int HZ ;
 int IEEE80211_CONF_OFFCHANNEL ;
 int memset (struct mt76_channel_state*,int ,int) ;
 struct mt76_channel_state* mt76_channel_state (struct mt76_dev*,int ) ;
 int mt76_has_tx_pending (struct mt76_dev*) ;
 int stub1 (struct mt76_dev*) ;
 int wait_event_timeout (int ,int,int) ;

void mt76_set_channel(struct mt76_dev *dev)
{
 struct ieee80211_hw *hw = dev->hw;
 struct cfg80211_chan_def *chandef = &hw->conf.chandef;
 struct mt76_channel_state *state;
 bool offchannel = hw->conf.flags & IEEE80211_CONF_OFFCHANNEL;
 int timeout = HZ / 5;

 wait_event_timeout(dev->tx_wait, !mt76_has_tx_pending(dev), timeout);

 if (dev->drv->update_survey)
  dev->drv->update_survey(dev);

 dev->chandef = *chandef;

 if (!offchannel)
  dev->main_chan = chandef->chan;

 if (chandef->chan != dev->main_chan) {
  state = mt76_channel_state(dev, chandef->chan);
  memset(state, 0, sizeof(*state));
 }
}
