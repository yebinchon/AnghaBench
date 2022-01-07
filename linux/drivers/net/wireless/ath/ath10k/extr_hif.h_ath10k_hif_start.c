
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ hif; } ;
struct TYPE_3__ {int (* start ) (struct ath10k*) ;} ;


 int stub1 (struct ath10k*) ;

__attribute__((used)) static inline int ath10k_hif_start(struct ath10k *ar)
{
 return ar->hif.ops->start(ar);
}
