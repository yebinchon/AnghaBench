
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_tx_info {int dummy; } ;
struct ath_hw {int dummy; } ;
struct TYPE_2__ {void (* set_txdesc ) (struct ath_hw*,void*,struct ath_tx_info*) ;} ;


 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 void stub1 (struct ath_hw*,void*,struct ath_tx_info*) ;

__attribute__((used)) static inline void ath9k_hw_set_txdesc(struct ath_hw *ah, void *ds,
           struct ath_tx_info *i)
{
 return ath9k_hw_ops(ah)->set_txdesc(ah, ds, i);
}
