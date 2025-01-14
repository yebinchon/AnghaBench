
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath9k_channel {int channel; } ;


 scalar_t__ IS_CHAN_2GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;

__attribute__((used)) static int ar9550_hw_get_modes_txgain_index(struct ath_hw *ah,
         struct ath9k_channel *chan)
{
 int ret;

 if (IS_CHAN_2GHZ(chan)) {
  if (IS_CHAN_HT40(chan))
   return 7;
  else
   return 8;
 }

 if (chan->channel <= 5350)
  ret = 1;
 else if ((chan->channel > 5350) && (chan->channel <= 5600))
  ret = 3;
 else
  ret = 5;

 if (IS_CHAN_HT40(chan))
  ret++;

 return ret;
}
