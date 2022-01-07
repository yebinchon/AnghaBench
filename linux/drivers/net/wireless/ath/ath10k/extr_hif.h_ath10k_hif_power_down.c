
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ hif; } ;
struct TYPE_3__ {int (* power_down ) (struct ath10k*) ;} ;


 int stub1 (struct ath10k*) ;

__attribute__((used)) static inline void ath10k_hif_power_down(struct ath10k *ar)
{
 ar->hif.ops->power_down(ar);
}
