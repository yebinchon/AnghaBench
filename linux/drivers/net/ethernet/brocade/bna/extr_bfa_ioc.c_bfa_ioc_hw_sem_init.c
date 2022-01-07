
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bfi_ioc_image_hdr {int exec; } ;
struct TYPE_2__ {int ioc_init_sem_reg; int ioc_sem_reg; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 scalar_t__ BFI_FWBOOT_TYPE_NORMAL ;
 int BFI_IOC_UNINIT ;
 int bfa_ioc_fwver_clear (struct bfa_ioc*) ;
 int bfa_ioc_get_cur_ioc_fwstate (struct bfa_ioc*) ;
 int bfa_ioc_set_alt_ioc_fwstate (struct bfa_ioc*,int) ;
 int bfa_ioc_set_cur_ioc_fwstate (struct bfa_ioc*,int) ;
 int bfa_nw_ioc_fwver_get (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ;
 int readl (int ) ;
 scalar_t__ swab32 (int ) ;
 int udelay (int) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_ioc_hw_sem_init(struct bfa_ioc *ioc)
{
 struct bfi_ioc_image_hdr fwhdr;
 u32 fwstate, r32;


 r32 = readl(ioc->ioc_regs.ioc_init_sem_reg);
 while (r32 & 0x1) {
  udelay(20);
  r32 = readl(ioc->ioc_regs.ioc_init_sem_reg);
 }

 fwstate = bfa_ioc_get_cur_ioc_fwstate(ioc);
 if (fwstate == BFI_IOC_UNINIT) {
  writel(1, ioc->ioc_regs.ioc_init_sem_reg);
  return;
 }

 bfa_nw_ioc_fwver_get(ioc, &fwhdr);

 if (swab32(fwhdr.exec) == BFI_FWBOOT_TYPE_NORMAL) {
  writel(1, ioc->ioc_regs.ioc_init_sem_reg);
  return;
 }

 bfa_ioc_fwver_clear(ioc);
 bfa_ioc_set_cur_ioc_fwstate(ioc, BFI_IOC_UNINIT);
 bfa_ioc_set_alt_ioc_fwstate(ioc, BFI_IOC_UNINIT);




 readl(ioc->ioc_regs.ioc_sem_reg);
 writel(1, ioc->ioc_regs.ioc_sem_reg);


 writel(1, ioc->ioc_regs.ioc_init_sem_reg);
}
