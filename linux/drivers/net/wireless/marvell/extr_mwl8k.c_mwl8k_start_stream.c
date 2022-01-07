
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl8k_ampdu_stream {scalar_t__ state; int tid; TYPE_1__* sta; } ;
struct ieee80211_hw {int wiphy; } ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ AMPDU_STREAM_NEW ;
 int ieee80211_start_tx_ba_session (TYPE_1__*,int ,int ) ;
 int wiphy_debug (int ,char*,int ,int ,...) ;

__attribute__((used)) static int
mwl8k_start_stream(struct ieee80211_hw *hw, struct mwl8k_ampdu_stream *stream)
{
 int ret;


 if (stream->state != AMPDU_STREAM_NEW)
  return 0;
 ret = ieee80211_start_tx_ba_session(stream->sta, stream->tid, 0);
 if (ret)
  wiphy_debug(hw->wiphy, "Failed to start stream for %pM %d: "
       "%d\n", stream->sta->addr, stream->tid, ret);
 else
  wiphy_debug(hw->wiphy, "Started stream for %pM %d\n",
       stream->sta->addr, stream->tid);
 return ret;
}
