
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct TYPE_2__ {int (* get_duration ) (struct ath_hw*,void const*,int) ;} ;


 TYPE_1__* ath9k_hw_ops (struct ath_hw*) ;
 int stub1 (struct ath_hw*,void const*,int) ;

__attribute__((used)) static inline int ath9k_hw_get_duration(struct ath_hw *ah, const void *ds,
     int index)
{
 return ath9k_hw_ops(ah)->get_duration(ah, ds, index);
}
