
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct myri10ge_priv {int tx_boundary; size_t board_number; int fw_name; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 size_t MYRI10GE_MAX_BOARDS ;
 int PCI_EXP_LNKSTA ;
 int THIS_MODULE ;
 int dev_info (int *,char*,...) ;
 int kernel_param_lock (int ) ;
 int kernel_param_unlock (int ) ;
 char* kstrdup (int *,int ) ;
 int myri10ge_firmware_probe (struct myri10ge_priv*) ;
 int myri10ge_force_firmware ;
 char* myri10ge_fw_aligned ;
 int * myri10ge_fw_name ;
 char** myri10ge_fw_names ;
 char* myri10ge_fw_unaligned ;
 int pcie_capability_read_word (TYPE_1__*,int ,int*) ;
 int set_fw_name (struct myri10ge_priv*,char*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void myri10ge_select_firmware(struct myri10ge_priv *mgp)
{
 int overridden = 0;

 if (myri10ge_force_firmware == 0) {
  int link_width;
  u16 lnk;

  pcie_capability_read_word(mgp->pdev, PCI_EXP_LNKSTA, &lnk);
  link_width = (lnk >> 4) & 0x3f;




  if (link_width < 8) {
   dev_info(&mgp->pdev->dev, "PCIE x%d Link\n",
     link_width);
   mgp->tx_boundary = 4096;
   set_fw_name(mgp, myri10ge_fw_aligned, 0);
  } else {
   myri10ge_firmware_probe(mgp);
  }
 } else {
  if (myri10ge_force_firmware == 1) {
   dev_info(&mgp->pdev->dev,
     "Assuming aligned completions (forced)\n");
   mgp->tx_boundary = 4096;
   set_fw_name(mgp, myri10ge_fw_aligned, 0);
  } else {
   dev_info(&mgp->pdev->dev,
     "Assuming unaligned completions (forced)\n");
   mgp->tx_boundary = 2048;
   set_fw_name(mgp, myri10ge_fw_unaligned, 0);
  }
 }

 kernel_param_lock(THIS_MODULE);
 if (myri10ge_fw_name != ((void*)0)) {
  char *fw_name = kstrdup(myri10ge_fw_name, GFP_KERNEL);
  if (fw_name) {
   overridden = 1;
   set_fw_name(mgp, fw_name, 1);
  }
 }
 kernel_param_unlock(THIS_MODULE);

 if (mgp->board_number < MYRI10GE_MAX_BOARDS &&
     myri10ge_fw_names[mgp->board_number] != ((void*)0) &&
     strlen(myri10ge_fw_names[mgp->board_number])) {
  set_fw_name(mgp, myri10ge_fw_names[mgp->board_number], 0);
  overridden = 1;
 }
 if (overridden)
  dev_info(&mgp->pdev->dev, "overriding firmware to %s\n",
    mgp->fw_name);
}
