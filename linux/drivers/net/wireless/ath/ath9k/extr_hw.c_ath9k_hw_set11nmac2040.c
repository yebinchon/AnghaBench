
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int cwm_ignore_extcca; } ;
struct ath_hw {TYPE_1__ config; } ;
struct ath9k_channel {int dummy; } ;


 scalar_t__ AR_2040_JOINED_RX_CLEAR ;
 int AR_2040_MODE ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 int REG_WRITE (struct ath_hw*,int ,scalar_t__) ;

void ath9k_hw_set11nmac2040(struct ath_hw *ah, struct ath9k_channel *chan)
{
 u32 macmode;

 if (IS_CHAN_HT40(chan) && !ah->config.cwm_ignore_extcca)
  macmode = AR_2040_JOINED_RX_CLEAR;
 else
  macmode = 0;

 REG_WRITE(ah, AR_2040_MODE, macmode);
}
