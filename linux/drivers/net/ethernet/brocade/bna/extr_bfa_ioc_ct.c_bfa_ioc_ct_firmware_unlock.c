
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int ioc_usage_sem_reg; int ioc_usage_reg; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 scalar_t__ BFA_IOC_FWIMG_MINSZ ;
 int BUG_ON (int) ;
 scalar_t__ bfa_cb_image_get_size (int ) ;
 int bfa_ioc_asic_gen (struct bfa_ioc*) ;
 int bfa_nw_ioc_sem_get (int ) ;
 int bfa_nw_ioc_sem_release (int ) ;
 scalar_t__ readl (int ) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static void
bfa_ioc_ct_firmware_unlock(struct bfa_ioc *ioc)
{
 u32 usecnt;




 if (bfa_cb_image_get_size(bfa_ioc_asic_gen(ioc)) <
      BFA_IOC_FWIMG_MINSZ)
  return;




 bfa_nw_ioc_sem_get(ioc->ioc_regs.ioc_usage_sem_reg);
 usecnt = readl(ioc->ioc_regs.ioc_usage_reg);
 BUG_ON(!(usecnt > 0));

 usecnt--;
 writel(usecnt, ioc->ioc_regs.ioc_usage_reg);

 bfa_nw_ioc_sem_release(ioc->ioc_regs.ioc_usage_sem_reg);
}
