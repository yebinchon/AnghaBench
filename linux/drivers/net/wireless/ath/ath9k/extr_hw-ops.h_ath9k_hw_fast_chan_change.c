
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int (* fast_chan_change ) (struct ath_hw*,struct ath9k_channel*,int *) ;} ;


 TYPE_1__* ath9k_hw_private_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,struct ath9k_channel*,int *) ;

__attribute__((used)) static inline int ath9k_hw_fast_chan_change(struct ath_hw *ah,
         struct ath9k_channel *chan,
         u8 *ini_reloaded)
{
 return ath9k_hw_private_ops(ah)->fast_chan_change(ah, chan,
         ini_reloaded);
}
