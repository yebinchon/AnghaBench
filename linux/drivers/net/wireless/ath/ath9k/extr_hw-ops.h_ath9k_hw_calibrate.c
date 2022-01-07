
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int (* calibrate ) (struct ath_hw*,struct ath9k_channel*,int ,int) ;} ;


 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,struct ath9k_channel*,int ,int) ;

__attribute__((used)) static inline int ath9k_hw_calibrate(struct ath_hw *ah,
         struct ath9k_channel *chan,
         u8 rxchainmask, bool longcal)
{
 return ath9k_hw_ops(ah)->calibrate(ah, chan, rxchainmask, longcal);
}
