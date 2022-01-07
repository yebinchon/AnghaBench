
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {void (* irq_enable ) (struct ath6kl*) ;} ;


 int ATH6KL_DBG_HIF ;
 int ath6kl_dbg (int ,char*) ;
 void stub1 (struct ath6kl*) ;

__attribute__((used)) static inline void ath6kl_hif_irq_enable(struct ath6kl *ar)
{
 ath6kl_dbg(ATH6KL_DBG_HIF, "hif irq enable\n");

 return ar->hif_ops->irq_enable(ar);
}
