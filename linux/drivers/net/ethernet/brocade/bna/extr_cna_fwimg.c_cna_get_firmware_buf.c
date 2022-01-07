
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ device; } ;


 scalar_t__ BFA_PCI_DEVICE_ID_CT2 ;
 int CNA_FW_FILE_CT ;
 int CNA_FW_FILE_CT2 ;
 scalar_t__ bfa_asic_id_ct (scalar_t__) ;
 int * bfi_image_ct2_cna ;
 scalar_t__ bfi_image_ct2_cna_size ;
 int * bfi_image_ct_cna ;
 scalar_t__ bfi_image_ct_cna_size ;
 int cna_read_firmware (struct pci_dev*,int **,scalar_t__*,int ) ;

u32 *
cna_get_firmware_buf(struct pci_dev *pdev)
{
 if (pdev->device == BFA_PCI_DEVICE_ID_CT2) {
  if (bfi_image_ct2_cna_size == 0)
   cna_read_firmware(pdev, &bfi_image_ct2_cna,
    &bfi_image_ct2_cna_size, CNA_FW_FILE_CT2);
  return bfi_image_ct2_cna;
 } else if (bfa_asic_id_ct(pdev->device)) {
  if (bfi_image_ct_cna_size == 0)
   cna_read_firmware(pdev, &bfi_image_ct_cna,
    &bfi_image_ct_cna_size, CNA_FW_FILE_CT);
  return bfi_image_ct_cna;
 }

 return ((void*)0);
}
