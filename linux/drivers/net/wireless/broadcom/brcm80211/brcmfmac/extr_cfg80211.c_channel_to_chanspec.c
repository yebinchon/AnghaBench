
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_channel {int center_freq; } ;
struct brcmu_d11inf {int (* encchspec ) (struct brcmu_chan*) ;} ;
struct brcmu_chan {int chspec; int bw; int chnum; } ;


 int BRCMU_CHAN_BW_20 ;
 int ieee80211_frequency_to_channel (int ) ;
 int stub1 (struct brcmu_chan*) ;

u16 channel_to_chanspec(struct brcmu_d11inf *d11inf,
   struct ieee80211_channel *ch)
{
 struct brcmu_chan ch_inf;

 ch_inf.chnum = ieee80211_frequency_to_channel(ch->center_freq);
 ch_inf.bw = BRCMU_CHAN_BW_20;
 d11inf->encchspec(&ch_inf);

 return ch_inf.chspec;
}
