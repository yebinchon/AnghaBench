
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bfi_ioc_image_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ smem_page_start; int host_page_num_fn; } ;
struct bfa_ioc {TYPE_1__ ioc_regs; } ;


 scalar_t__ bfa_ioc_smem_pgnum (struct bfa_ioc*,scalar_t__) ;
 int readl (scalar_t__) ;
 scalar_t__ swab32 (int ) ;
 int writel (scalar_t__,int ) ;

void
bfa_nw_ioc_fwver_get(struct bfa_ioc *ioc, struct bfi_ioc_image_hdr *fwhdr)
{
 u32 pgnum;
 u32 loff = 0;
 int i;
 u32 *fwsig = (u32 *) fwhdr;

 pgnum = bfa_ioc_smem_pgnum(ioc, loff);
 writel(pgnum, ioc->ioc_regs.host_page_num_fn);

 for (i = 0; i < (sizeof(struct bfi_ioc_image_hdr) / sizeof(u32));
      i++) {
  fwsig[i] =
   swab32(readl(loff + ioc->ioc_regs.smem_page_start));
  loff += sizeof(u32);
 }
}
