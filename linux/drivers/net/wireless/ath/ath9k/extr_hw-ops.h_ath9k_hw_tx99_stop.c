
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct TYPE_2__ {int (* tx99_stop ) (struct ath_hw*) ;} ;


 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*) ;

__attribute__((used)) static inline void ath9k_hw_tx99_stop(struct ath_hw *ah)
{
 ath9k_hw_ops(ah)->tx99_stop(ah);
}
