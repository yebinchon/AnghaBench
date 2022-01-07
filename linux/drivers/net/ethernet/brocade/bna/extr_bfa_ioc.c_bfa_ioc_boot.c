
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfi_ioc_image_hdr {int dummy; } ;
struct bfa_ioc {int iocpf; } ;
typedef enum bfi_fwboot_type { ____Placeholder_bfi_fwboot_type } bfi_fwboot_type ;
typedef enum bfa_status { ____Placeholder_bfa_status } bfa_status ;


 int BFA_STATUS_FAILED ;
 scalar_t__ BFA_STATUS_OK ;
 int BFI_FWBOOT_ENV_OS ;
 int BFI_FWBOOT_TYPE_FLASH ;
 int BFI_FWBOOT_TYPE_MEMTEST ;
 int BFI_FWBOOT_TYPE_NORMAL ;
 scalar_t__ BFI_IOC_IMG_VER_BETTER ;
 int BFI_IOC_INITING ;
 int BFI_IOC_MEMTEST ;
 int IOCPF_E_TIMEOUT ;
 scalar_t__ bfa_cb_image_get_chunk (int ,int ) ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_ioc_asic_gen (struct bfa_ioc*) ;
 int bfa_ioc_download_fw (struct bfa_ioc*,int,int ) ;
 scalar_t__ bfa_ioc_flash_fwver_cmp (struct bfa_ioc*,struct bfi_ioc_image_hdr*) ;
 int bfa_ioc_lpu_start (struct bfa_ioc*) ;
 int bfa_ioc_msgflush (struct bfa_ioc*) ;
 scalar_t__ bfa_ioc_pll_init (struct bfa_ioc*) ;
 int bfa_ioc_set_alt_ioc_fwstate (struct bfa_ioc*,int ) ;
 int bfa_ioc_set_cur_ioc_fwstate (struct bfa_ioc*,int ) ;
 int bfa_ioc_stats (struct bfa_ioc*,int ) ;
 int ioc_boots ;

__attribute__((used)) static enum bfa_status
bfa_ioc_boot(struct bfa_ioc *ioc, enum bfi_fwboot_type boot_type,
  u32 boot_env)
{
 struct bfi_ioc_image_hdr *drv_fwhdr;
 enum bfa_status status;
 bfa_ioc_stats(ioc, ioc_boots);

 if (bfa_ioc_pll_init(ioc) != BFA_STATUS_OK)
  return BFA_STATUS_FAILED;
 if (boot_env == BFI_FWBOOT_ENV_OS &&
     boot_type == BFI_FWBOOT_TYPE_NORMAL) {
  drv_fwhdr = (struct bfi_ioc_image_hdr *)
   bfa_cb_image_get_chunk(bfa_ioc_asic_gen(ioc), 0);



  if (bfa_ioc_flash_fwver_cmp(ioc, drv_fwhdr) ==
   BFI_IOC_IMG_VER_BETTER)
   boot_type = BFI_FWBOOT_TYPE_FLASH;
 }




 if (boot_type == BFI_FWBOOT_TYPE_MEMTEST) {
  bfa_ioc_set_cur_ioc_fwstate(ioc, BFI_IOC_MEMTEST);
  bfa_ioc_set_alt_ioc_fwstate(ioc, BFI_IOC_MEMTEST);
 } else {
  bfa_ioc_set_cur_ioc_fwstate(ioc, BFI_IOC_INITING);
  bfa_ioc_set_alt_ioc_fwstate(ioc, BFI_IOC_INITING);
 }

 bfa_ioc_msgflush(ioc);
 status = bfa_ioc_download_fw(ioc, boot_type, boot_env);
 if (status == BFA_STATUS_OK)
  bfa_ioc_lpu_start(ioc);
 else
  bfa_fsm_send_event(&ioc->iocpf, IOCPF_E_TIMEOUT);

 return status;
}
