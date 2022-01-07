
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsdfec_dev {int flags; int error_data_lock; scalar_t__ cecc_count; scalar_t__ uecc_count; scalar_t__ isr_err_count; } ;


 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int xsdfec_clear_stats(struct xsdfec_dev *xsdfec)
{
 spin_lock_irqsave(&xsdfec->error_data_lock, xsdfec->flags);
 xsdfec->isr_err_count = 0;
 xsdfec->uecc_count = 0;
 xsdfec->cecc_count = 0;
 spin_unlock_irqrestore(&xsdfec->error_data_lock, xsdfec->flags);

 return 0;
}
