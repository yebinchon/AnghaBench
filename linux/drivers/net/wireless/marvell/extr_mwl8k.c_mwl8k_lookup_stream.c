
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mwl8k_priv {struct mwl8k_ampdu_stream* ampdu; } ;
struct mwl8k_ampdu_stream {scalar_t__ state; scalar_t__ tid; TYPE_1__* sta; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_2__ {int addr; } ;


 scalar_t__ AMPDU_NO_STREAM ;
 int ETH_ALEN ;
 int MWL8K_NUM_AMPDU_STREAMS ;
 int memcmp (int ,scalar_t__*,int ) ;

__attribute__((used)) static struct mwl8k_ampdu_stream *
mwl8k_lookup_stream(struct ieee80211_hw *hw, u8 *addr, u8 tid)
{
 struct mwl8k_priv *priv = hw->priv;
 int i;

 for (i = 0; i < MWL8K_NUM_AMPDU_STREAMS; i++) {
  struct mwl8k_ampdu_stream *stream;
  stream = &priv->ampdu[i];
  if (stream->state == AMPDU_NO_STREAM)
   continue;
  if (!memcmp(stream->sta->addr, addr, ETH_ALEN) &&
      stream->tid == tid)
   return stream;
 }
 return ((void*)0);
}
