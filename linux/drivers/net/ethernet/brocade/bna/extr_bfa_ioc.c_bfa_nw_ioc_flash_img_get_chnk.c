
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pci_bar_kva; } ;
struct bfa_ioc {TYPE_1__ pcidev; } ;
typedef enum bfa_status { ____Placeholder_bfa_status } bfa_status ;


 scalar_t__ BFA_FLASH_PART_FWIMG_ADDR ;
 int BFI_FLASH_CHUNK_SZ ;
 int bfa_flash_raw_read (int ,scalar_t__,char*,int ) ;

__attribute__((used)) static enum bfa_status
bfa_nw_ioc_flash_img_get_chnk(struct bfa_ioc *ioc, u32 off,
         u32 *fwimg)
{
 return bfa_flash_raw_read(ioc->pcidev.pci_bar_kva,
   BFA_FLASH_PART_FWIMG_ADDR + (off * sizeof(u32)),
   (char *)fwimg, BFI_FLASH_CHUNK_SZ);
}
