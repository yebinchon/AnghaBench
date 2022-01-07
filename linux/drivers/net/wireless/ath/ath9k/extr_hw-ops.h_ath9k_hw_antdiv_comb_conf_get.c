
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw_antcomb_conf {int dummy; } ;
struct ath_hw {int dummy; } ;
struct TYPE_2__ {int (* antdiv_comb_conf_get ) (struct ath_hw*,struct ath_hw_antcomb_conf*) ;} ;


 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,struct ath_hw_antcomb_conf*) ;

__attribute__((used)) static inline void ath9k_hw_antdiv_comb_conf_get(struct ath_hw *ah,
  struct ath_hw_antcomb_conf *antconf)
{
 ath9k_hw_ops(ah)->antdiv_comb_conf_get(ah, antconf);
}
