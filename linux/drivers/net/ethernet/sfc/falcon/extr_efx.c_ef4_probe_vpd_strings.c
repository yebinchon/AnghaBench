
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vpd_data ;
struct pci_dev {int dummy; } ;
struct ef4_nic {int vpd_sn; int net_dev; struct pci_dev* pci_dev; } ;
typedef int ssize_t ;


 int GFP_KERNEL ;
 scalar_t__ PCI_VPD_INFO_FLD_HDR_SIZE ;
 int PCI_VPD_LRDT_RO_DATA ;
 int PCI_VPD_LRDT_TAG_SIZE ;
 int SFC_VPD_LEN ;
 int drv ;
 int kmalloc (int,int ) ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int netif_info (struct ef4_nic*,int ,int ,char*,int,char*) ;
 int pci_read_vpd (struct pci_dev*,int ,int,char*) ;
 int pci_vpd_find_info_keyword (char*,int,int,char*) ;
 int pci_vpd_find_tag (char*,int ,int,int ) ;
 int pci_vpd_info_field_size (char*) ;
 int pci_vpd_lrdt_size (char*) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static void ef4_probe_vpd_strings(struct ef4_nic *efx)
{
 struct pci_dev *dev = efx->pci_dev;
 char vpd_data[SFC_VPD_LEN];
 ssize_t vpd_size;
 int ro_start, ro_size, i, j;


 vpd_size = pci_read_vpd(dev, 0, sizeof(vpd_data), vpd_data);
 if (vpd_size <= 0) {
  netif_err(efx, drv, efx->net_dev, "Unable to read VPD\n");
  return;
 }


 ro_start = pci_vpd_find_tag(vpd_data, 0, vpd_size, PCI_VPD_LRDT_RO_DATA);
 if (ro_start < 0) {
  netif_err(efx, drv, efx->net_dev, "VPD Read-only not found\n");
  return;
 }

 ro_size = pci_vpd_lrdt_size(&vpd_data[ro_start]);
 j = ro_size;
 i = ro_start + PCI_VPD_LRDT_TAG_SIZE;
 if (i + j > vpd_size)
  j = vpd_size - i;


 i = pci_vpd_find_info_keyword(vpd_data, i, j, "PN");
 if (i < 0) {
  netif_err(efx, drv, efx->net_dev, "Part number not found\n");
  return;
 }

 j = pci_vpd_info_field_size(&vpd_data[i]);
 i += PCI_VPD_INFO_FLD_HDR_SIZE;
 if (i + j > vpd_size) {
  netif_err(efx, drv, efx->net_dev, "Incomplete part number\n");
  return;
 }

 netif_info(efx, drv, efx->net_dev,
     "Part Number : %.*s\n", j, &vpd_data[i]);

 i = ro_start + PCI_VPD_LRDT_TAG_SIZE;
 j = ro_size;
 i = pci_vpd_find_info_keyword(vpd_data, i, j, "SN");
 if (i < 0) {
  netif_err(efx, drv, efx->net_dev, "Serial number not found\n");
  return;
 }

 j = pci_vpd_info_field_size(&vpd_data[i]);
 i += PCI_VPD_INFO_FLD_HDR_SIZE;
 if (i + j > vpd_size) {
  netif_err(efx, drv, efx->net_dev, "Incomplete serial number\n");
  return;
 }

 efx->vpd_sn = kmalloc(j + 1, GFP_KERNEL);
 if (!efx->vpd_sn)
  return;

 snprintf(efx->vpd_sn, j + 1, "%s", &vpd_data[i]);
}
