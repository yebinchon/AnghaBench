
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int* model; int* board_model; int* version; int* local_mac; int mac_num; int* phy_type; } ;
struct niu {int dev; int device; TYPE_1__ vpd; } ;


 int EINVAL ;
 int ETH_ALEN ;
 unsigned int FOUND_MASK_ALL ;
 unsigned int FOUND_MASK_BMODEL ;
 unsigned int FOUND_MASK_MAC ;
 unsigned int FOUND_MASK_MODEL ;
 unsigned int FOUND_MASK_NMAC ;
 unsigned int FOUND_MASK_PHY ;
 unsigned int FOUND_MASK_VERS ;
 int KERN_DEBUG ;
 int NIU_VPD_BD_MODEL_MAX ;
 int NIU_VPD_MODEL_MAX ;
 int NIU_VPD_PHY_TYPE_MAX ;
 int NIU_VPD_VERSION_MAX ;
 int dev_err (int ,char*,char*,int) ;
 int netif_printk (struct niu*,int ,int ,int ,char*,char*,int) ;
 int niu_pci_eeprom_read (struct niu*,scalar_t__) ;
 int niu_pci_vpd_get_propname (struct niu*,scalar_t__,char*,int) ;
 int niu_vpd_parse_version (struct niu*) ;
 int probe ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int niu_pci_vpd_scan_props(struct niu *np, u32 start, u32 end)
{
 unsigned int found_mask = 0;
 netif_printk(np, probe, KERN_DEBUG, np->dev,
       "VPD_SCAN: start[%x] end[%x]\n", start, end);
 while (start < end) {
  int len, err, prop_len;
  char namebuf[64];
  u8 *prop_buf;
  int max_len;

  if (found_mask == 0x0000003f) {
   niu_vpd_parse_version(np);
   return 1;
  }

  err = niu_pci_eeprom_read(np, start + 2);
  if (err < 0)
   return err;
  len = err;
  start += 3;

  prop_len = niu_pci_eeprom_read(np, start + 4);
  if (prop_len < 0)
   return prop_len;
  err = niu_pci_vpd_get_propname(np, start + 5, namebuf, 64);
  if (err < 0)
   return err;

  prop_buf = ((void*)0);
  max_len = 0;
  if (!strcmp(namebuf, "model")) {
   prop_buf = np->vpd.model;
   max_len = NIU_VPD_MODEL_MAX;
   found_mask |= 0x00000001;
  } else if (!strcmp(namebuf, "board-model")) {
   prop_buf = np->vpd.board_model;
   max_len = NIU_VPD_BD_MODEL_MAX;
   found_mask |= 0x00000002;
  } else if (!strcmp(namebuf, "version")) {
   prop_buf = np->vpd.version;
   max_len = NIU_VPD_VERSION_MAX;
   found_mask |= 0x00000004;
  } else if (!strcmp(namebuf, "local-mac-address")) {
   prop_buf = np->vpd.local_mac;
   max_len = ETH_ALEN;
   found_mask |= 0x00000008;
  } else if (!strcmp(namebuf, "num-mac-addresses")) {
   prop_buf = &np->vpd.mac_num;
   max_len = 1;
   found_mask |= 0x00000010;
  } else if (!strcmp(namebuf, "phy-type")) {
   prop_buf = np->vpd.phy_type;
   max_len = NIU_VPD_PHY_TYPE_MAX;
   found_mask |= 0x00000020;
  }

  if (max_len && prop_len > max_len) {
   dev_err(np->device, "Property '%s' length (%d) is too long\n", namebuf, prop_len);
   return -EINVAL;
  }

  if (prop_buf) {
   u32 off = start + 5 + err;
   int i;

   netif_printk(np, probe, KERN_DEBUG, np->dev,
         "VPD_SCAN: Reading in property [%s] len[%d]\n",
         namebuf, prop_len);
   for (i = 0; i < prop_len; i++) {
    err = niu_pci_eeprom_read(np, off + i);
    if (err >= 0)
     *prop_buf = err;
    ++prop_buf;
   }
  }

  start += len;
 }

 return 0;
}
