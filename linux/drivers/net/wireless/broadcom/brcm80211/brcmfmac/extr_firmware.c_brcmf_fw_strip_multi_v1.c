
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct nvram_parser {int nvram_len; scalar_t__* nvram; int boardrev_found; } ;
typedef int pcie_path ;
typedef int pci_path ;


 size_t BRCMF_FW_NVRAM_DEVPATH_LEN ;
 int GFP_KERNEL ;
 int kfree (scalar_t__*) ;
 scalar_t__* kzalloc (int,int ) ;
 int snprintf (char*,int,char*,int,int) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (scalar_t__*,char*,int) ;

__attribute__((used)) static void brcmf_fw_strip_multi_v1(struct nvram_parser *nvp, u16 domain_nr,
        u16 bus_nr)
{

 char pci_path[] = "=pci/?/?";
 size_t pci_len;
 char pcie_path[] = "=pcie/?/?";
 size_t pcie_len;

 u32 i, j;
 bool found;
 u8 *nvram;
 u8 id;

 nvram = kzalloc(nvp->nvram_len + 1 + 3 + sizeof(u32), GFP_KERNEL);
 if (!nvram)
  goto fail;


 if (nvp->nvram_len < BRCMF_FW_NVRAM_DEVPATH_LEN + 6)
  goto fail;




 snprintf(pci_path, sizeof(pci_path), "=pci/%d/%d", domain_nr,
   bus_nr);
 pci_len = strlen(pci_path);
 snprintf(pcie_path, sizeof(pcie_path), "=pcie/%d/%d", domain_nr,
   bus_nr);
 pcie_len = strlen(pcie_path);
 found = 0;
 i = 0;
 while (i < nvp->nvram_len - BRCMF_FW_NVRAM_DEVPATH_LEN) {



  if (strncmp(&nvp->nvram[i], "devpath", 7) == 0 &&
      (!strncmp(&nvp->nvram[i + 8], pci_path, pci_len) ||
       !strncmp(&nvp->nvram[i + 8], pcie_path, pcie_len))) {
   id = nvp->nvram[i + 7] - '0';
   found = 1;
   break;
  }
  while (nvp->nvram[i] != 0)
   i++;
  i++;
 }
 if (!found)
  goto fail;


 i = 0;
 j = 0;
 while (i < nvp->nvram_len) {
  if ((nvp->nvram[i] - '0' == id) && (nvp->nvram[i + 1] == ':')) {
   i += 2;
   if (strncmp(&nvp->nvram[i], "boardrev", 8) == 0)
    nvp->boardrev_found = 1;
   while (nvp->nvram[i] != 0) {
    nvram[j] = nvp->nvram[i];
    i++;
    j++;
   }
   nvram[j] = 0;
   j++;
  }
  while (nvp->nvram[i] != 0)
   i++;
  i++;
 }
 kfree(nvp->nvram);
 nvp->nvram = nvram;
 nvp->nvram_len = j;
 return;

fail:
 kfree(nvram);
 nvp->nvram_len = 0;
}
