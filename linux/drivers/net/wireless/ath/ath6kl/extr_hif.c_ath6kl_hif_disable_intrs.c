
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl_irq_enable_reg {int int_status_en; } ;
struct TYPE_2__ {scalar_t__ cntr_int_status_en; scalar_t__ err_int_status_en; scalar_t__ cpu_int_status_en; scalar_t__ int_status_en; } ;
struct ath6kl_device {int ar; int lock; TYPE_1__ irq_en_reg; } ;
typedef int regs ;


 int HIF_WR_SYNC_BYTE_INC ;
 int INT_STATUS_ENABLE_ADDRESS ;
 int hif_read_write_sync (int ,int ,int *,int,int ) ;
 int memcpy (struct ath6kl_irq_enable_reg*,TYPE_1__*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ath6kl_hif_disable_intrs(struct ath6kl_device *dev)
{
 struct ath6kl_irq_enable_reg regs;

 spin_lock_bh(&dev->lock);

 dev->irq_en_reg.int_status_en = 0;
 dev->irq_en_reg.cpu_int_status_en = 0;
 dev->irq_en_reg.err_int_status_en = 0;
 dev->irq_en_reg.cntr_int_status_en = 0;
 memcpy(&regs, &dev->irq_en_reg, sizeof(regs));
 spin_unlock_bh(&dev->lock);

 return hif_read_write_sync(dev->ar, INT_STATUS_ENABLE_ADDRESS,
       &regs.int_status_en, sizeof(regs),
       HIF_WR_SYNC_BYTE_INC);
}
