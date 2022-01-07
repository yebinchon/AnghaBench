
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bfi_ioc_image_hdr {int dummy; } ;
struct TYPE_2__ {int ioc_usage_sem_reg; int ioc_usage_reg; int ioc_fwstate; int ioc_fail_sync; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;
typedef enum bfi_ioc_state { ____Placeholder_bfi_ioc_state } bfi_ioc_state ;


 scalar_t__ BFA_IOC_FWIMG_MINSZ ;
 int BFI_IOC_UNINIT ;
 int BUG_ON (int) ;
 scalar_t__ bfa_cb_image_get_size (int ) ;
 int bfa_ioc_asic_gen (struct bfa_ioc*) ;
 int bfa_nw_ioc_fwver_cmp (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ;
 int bfa_nw_ioc_fwver_get (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ;
 int bfa_nw_ioc_sem_get (int ) ;
 int bfa_nw_ioc_sem_release (int ) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static bool
bfa_ioc_ct_firmware_lock(struct bfa_ioc *ioc)
{
 enum bfi_ioc_state ioc_fwstate;
 u32 usecnt;
 struct bfi_ioc_image_hdr fwhdr;




 if (bfa_cb_image_get_size(bfa_ioc_asic_gen(ioc)) <
      BFA_IOC_FWIMG_MINSZ)
  return 1;

 bfa_nw_ioc_sem_get(ioc->ioc_regs.ioc_usage_sem_reg);
 usecnt = readl(ioc->ioc_regs.ioc_usage_reg);




 if (usecnt == 0) {
  writel(1, ioc->ioc_regs.ioc_usage_reg);
  bfa_nw_ioc_sem_release(ioc->ioc_regs.ioc_usage_sem_reg);
  writel(0, ioc->ioc_regs.ioc_fail_sync);
  return 1;
 }

 ioc_fwstate = readl(ioc->ioc_regs.ioc_fwstate);




 BUG_ON(!(ioc_fwstate != BFI_IOC_UNINIT));




 bfa_nw_ioc_fwver_get(ioc, &fwhdr);
 if (!bfa_nw_ioc_fwver_cmp(ioc, &fwhdr)) {
  bfa_nw_ioc_sem_release(ioc->ioc_regs.ioc_usage_sem_reg);
  return 0;
 }




 usecnt++;
 writel(usecnt, ioc->ioc_regs.ioc_usage_reg);
 bfa_nw_ioc_sem_release(ioc->ioc_regs.ioc_usage_sem_reg);
 return 1;
}
