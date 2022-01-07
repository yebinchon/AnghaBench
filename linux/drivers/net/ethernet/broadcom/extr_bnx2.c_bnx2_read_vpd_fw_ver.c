
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2 {char* fw_version; } ;


 unsigned int BNX2_MAX_VER_SLEN ;
 int BNX2_VPD_LEN ;
 int BNX2_VPD_NVRAM_OFFSET ;
 int GFP_KERNEL ;
 scalar_t__ PCI_VPD_INFO_FLD_HDR_SIZE ;
 int PCI_VPD_LRDT_RO_DATA ;
 scalar_t__ PCI_VPD_LRDT_TAG_SIZE ;
 int PCI_VPD_RO_KEYWORD_MFR_ID ;
 int PCI_VPD_RO_KEYWORD_VENDOR0 ;
 int bnx2_nvram_read (struct bnx2*,int ,int *,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 scalar_t__ memcmp (int *,char*,int) ;
 int memcpy (char*,int *,unsigned int) ;
 int pci_vpd_find_info_keyword (int *,int,unsigned int,int ) ;
 int pci_vpd_find_tag (int *,int ,int,int ) ;
 unsigned int pci_vpd_info_field_size (int *) ;
 unsigned int pci_vpd_lrdt_size (int *) ;

__attribute__((used)) static void
bnx2_read_vpd_fw_ver(struct bnx2 *bp)
{
 int rc, i, j;
 u8 *data;
 unsigned int block_end, rosize, len;





 data = kmalloc(256, GFP_KERNEL);
 if (!data)
  return;

 rc = bnx2_nvram_read(bp, 0x300, data + 128,
        128);
 if (rc)
  goto vpd_done;

 for (i = 0; i < 128; i += 4) {
  data[i] = data[i + 128 + 3];
  data[i + 1] = data[i + 128 + 2];
  data[i + 2] = data[i + 128 + 1];
  data[i + 3] = data[i + 128];
 }

 i = pci_vpd_find_tag(data, 0, 128, PCI_VPD_LRDT_RO_DATA);
 if (i < 0)
  goto vpd_done;

 rosize = pci_vpd_lrdt_size(&data[i]);
 i += PCI_VPD_LRDT_TAG_SIZE;
 block_end = i + rosize;

 if (block_end > 128)
  goto vpd_done;

 j = pci_vpd_find_info_keyword(data, i, rosize,
          PCI_VPD_RO_KEYWORD_MFR_ID);
 if (j < 0)
  goto vpd_done;

 len = pci_vpd_info_field_size(&data[j]);

 j += PCI_VPD_INFO_FLD_HDR_SIZE;
 if (j + len > block_end || len != 4 ||
     memcmp(&data[j], "1028", 4))
  goto vpd_done;

 j = pci_vpd_find_info_keyword(data, i, rosize,
          PCI_VPD_RO_KEYWORD_VENDOR0);
 if (j < 0)
  goto vpd_done;

 len = pci_vpd_info_field_size(&data[j]);

 j += PCI_VPD_INFO_FLD_HDR_SIZE;
 if (j + len > block_end || len > 30)
  goto vpd_done;

 memcpy(bp->fw_version, &data[j], len);
 bp->fw_version[len] = ' ';

vpd_done:
 kfree(data);
}
