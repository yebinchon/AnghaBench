
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath6kl_device {TYPE_3__* ar; TYPE_1__* htc_cnxt; int lock; } ;
struct TYPE_5__ {int block_size; int htc_addr; } ;
struct TYPE_6__ {TYPE_2__ mbox_info; } ;
struct TYPE_4__ {int block_sz; int block_mask; } ;


 int ATH6KL_DBG_HIF ;
 int EINVAL ;
 int WARN_ON (int) ;
 int ath6kl_dbg (int ,char*,int,int ) ;
 int ath6kl_hif_disable_intrs (struct ath6kl_device*) ;
 int spin_lock_init (int *) ;

int ath6kl_hif_setup(struct ath6kl_device *dev)
{
 int status = 0;

 spin_lock_init(&dev->lock);






 dev->htc_cnxt->block_sz = dev->ar->mbox_info.block_size;


 if ((dev->htc_cnxt->block_sz & (dev->htc_cnxt->block_sz - 1)) != 0) {
  WARN_ON(1);
  status = -EINVAL;
  goto fail_setup;
 }


 dev->htc_cnxt->block_mask = dev->htc_cnxt->block_sz - 1;

 ath6kl_dbg(ATH6KL_DBG_HIF, "hif block size %d mbox addr 0x%x\n",
     dev->htc_cnxt->block_sz, dev->ar->mbox_info.htc_addr);

 status = ath6kl_hif_disable_intrs(dev);

fail_setup:
 return status;
}
