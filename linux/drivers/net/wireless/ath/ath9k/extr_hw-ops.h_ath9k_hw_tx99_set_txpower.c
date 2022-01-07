
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath_hw {int dummy; } ;
struct TYPE_2__ {int (* tx99_set_txpower ) (struct ath_hw*,int ) ;} ;


 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,int ) ;

__attribute__((used)) static inline void ath9k_hw_tx99_set_txpower(struct ath_hw *ah, u8 power)
{
 if (ath9k_hw_ops(ah)->tx99_set_txpower)
  ath9k_hw_ops(ah)->tx99_set_txpower(ah, power);
}
