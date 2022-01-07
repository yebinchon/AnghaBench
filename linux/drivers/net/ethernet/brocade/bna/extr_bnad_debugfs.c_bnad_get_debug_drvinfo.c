
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bnad_iocmd_comp {scalar_t__ comp_status; int comp; struct bnad* bnad; } ;
struct bnad_drvinfo {scalar_t__ flash_status; int flash_attr; scalar_t__ cee_status; int cee_attr; int ioc_attr; } ;
struct TYPE_3__ {int ioc; } ;
struct TYPE_4__ {int flash; int cee; TYPE_1__ ioceth; } ;
struct bnad {int bna_lock; TYPE_2__ bna; } ;


 int BFA_STATUS_FAILED ;
 int BFA_STATUS_OK ;
 int bfa_nw_cee_get_attr (int *,int *,int ,struct bnad_iocmd_comp*) ;
 int bfa_nw_flash_get_attr (int *,int *,int ,struct bnad_iocmd_comp*) ;
 int bfa_nw_ioc_get_attr (int *,int *) ;
 int bnad_cb_completion ;
 int init_completion (int *) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
bnad_get_debug_drvinfo(struct bnad *bnad, void *buffer, u32 len)
{
 struct bnad_drvinfo *drvinfo = (struct bnad_drvinfo *) buffer;
 struct bnad_iocmd_comp fcomp;
 unsigned long flags = 0;
 int ret = BFA_STATUS_FAILED;


 spin_lock_irqsave(&bnad->bna_lock, flags);
 bfa_nw_ioc_get_attr(&bnad->bna.ioceth.ioc, &drvinfo->ioc_attr);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);


 fcomp.bnad = bnad;
 fcomp.comp_status = 0;
 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bnad->bna_lock, flags);
 ret = bfa_nw_cee_get_attr(&bnad->bna.cee, &drvinfo->cee_attr,
    bnad_cb_completion, &fcomp);
 if (ret != BFA_STATUS_OK) {
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
  goto out;
 }
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
 wait_for_completion(&fcomp.comp);
 drvinfo->cee_status = fcomp.comp_status;


 fcomp.comp_status = 0;
 reinit_completion(&fcomp.comp);
 spin_lock_irqsave(&bnad->bna_lock, flags);
 ret = bfa_nw_flash_get_attr(&bnad->bna.flash, &drvinfo->flash_attr,
    bnad_cb_completion, &fcomp);
 if (ret != BFA_STATUS_OK) {
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
  goto out;
 }
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
 wait_for_completion(&fcomp.comp);
 drvinfo->flash_status = fcomp.comp_status;
out:
 return ret;
}
