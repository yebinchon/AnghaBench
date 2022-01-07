
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_pcie_shared_info {int dtoh_mb_data_addr; } ;
struct brcmf_pciedev_info {int mbdata_completed; TYPE_1__* pdev; int mbdata_resp_wait; struct brcmf_pcie_shared_info shared; } ;
struct TYPE_2__ {int dev; } ;


 int BRCMF_D2H_DEV_D3_ACK ;
 int BRCMF_D2H_DEV_DS_ENTER_REQ ;
 int BRCMF_D2H_DEV_DS_EXIT_NOTE ;
 int BRCMF_D2H_DEV_FWHALT ;
 int BRCMF_H2D_HOST_DS_ACK ;
 int PCIE ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_fw_crashed (int *) ;
 int brcmf_pcie_read_tcm32 (struct brcmf_pciedev_info*,int) ;
 int brcmf_pcie_send_mb_data (struct brcmf_pciedev_info*,int ) ;
 int brcmf_pcie_write_tcm32 (struct brcmf_pciedev_info*,int,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void brcmf_pcie_handle_mb_data(struct brcmf_pciedev_info *devinfo)
{
 struct brcmf_pcie_shared_info *shared;
 u32 addr;
 u32 dtoh_mb_data;

 shared = &devinfo->shared;
 addr = shared->dtoh_mb_data_addr;
 dtoh_mb_data = brcmf_pcie_read_tcm32(devinfo, addr);

 if (!dtoh_mb_data)
  return;

 brcmf_pcie_write_tcm32(devinfo, addr, 0);

 brcmf_dbg(PCIE, "D2H_MB_DATA: 0x%04x\n", dtoh_mb_data);
 if (dtoh_mb_data & BRCMF_D2H_DEV_DS_ENTER_REQ) {
  brcmf_dbg(PCIE, "D2H_MB_DATA: DEEP SLEEP REQ\n");
  brcmf_pcie_send_mb_data(devinfo, BRCMF_H2D_HOST_DS_ACK);
  brcmf_dbg(PCIE, "D2H_MB_DATA: sent DEEP SLEEP ACK\n");
 }
 if (dtoh_mb_data & BRCMF_D2H_DEV_DS_EXIT_NOTE)
  brcmf_dbg(PCIE, "D2H_MB_DATA: DEEP SLEEP EXIT\n");
 if (dtoh_mb_data & BRCMF_D2H_DEV_D3_ACK) {
  brcmf_dbg(PCIE, "D2H_MB_DATA: D3 ACK\n");
  devinfo->mbdata_completed = 1;
  wake_up(&devinfo->mbdata_resp_wait);
 }
 if (dtoh_mb_data & BRCMF_D2H_DEV_FWHALT) {
  brcmf_dbg(PCIE, "D2H_MB_DATA: FW HALT\n");
  brcmf_fw_crashed(&devinfo->pdev->dev);
 }
}
