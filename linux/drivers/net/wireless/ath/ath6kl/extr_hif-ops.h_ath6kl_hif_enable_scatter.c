
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {int (* enable_scatter ) (struct ath6kl*) ;} ;


 int stub1 (struct ath6kl*) ;

__attribute__((used)) static inline int ath6kl_hif_enable_scatter(struct ath6kl *ar)
{
 return ar->hif_ops->enable_scatter(ar);
}
