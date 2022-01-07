
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ieee80211_channel* channels; } ;
struct mt76_sband {struct mt76_channel_state* chan; TYPE_1__ sband; } ;
struct mt76_dev {struct mt76_sband sband_5g; struct mt76_sband sband_2g; } ;
struct mt76_channel_state {int dummy; } ;
struct ieee80211_channel {scalar_t__ band; } ;


 scalar_t__ NL80211_BAND_2GHZ ;

__attribute__((used)) static inline struct mt76_channel_state *
mt76_channel_state(struct mt76_dev *dev, struct ieee80211_channel *c)
{
 struct mt76_sband *msband;
 int idx;

 if (c->band == NL80211_BAND_2GHZ)
  msband = &dev->sband_2g;
 else
  msband = &dev->sband_5g;

 idx = c - &msband->sband.channels[0];
 return &msband->chan[idx];
}
