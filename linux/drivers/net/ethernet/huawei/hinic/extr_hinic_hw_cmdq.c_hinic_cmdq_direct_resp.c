
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_cmdqs {int * cmdq; struct hinic_hwif* hwif; } ;
struct hinic_cmdq_buf {int dummy; } ;
typedef enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;


 size_t HINIC_CMDQ_SYNC ;
 int cmdq_params_valid (struct hinic_cmdq_buf*) ;
 int cmdq_sync_cmd_direct_resp (int *,int,int ,struct hinic_cmdq_buf*,int *) ;
 int dev_err (int *,char*) ;

int hinic_cmdq_direct_resp(struct hinic_cmdqs *cmdqs,
      enum hinic_mod_type mod, u8 cmd,
      struct hinic_cmdq_buf *buf_in, u64 *resp)
{
 struct hinic_hwif *hwif = cmdqs->hwif;
 struct pci_dev *pdev = hwif->pdev;
 int err;

 err = cmdq_params_valid(buf_in);
 if (err) {
  dev_err(&pdev->dev, "Invalid CMDQ parameters\n");
  return err;
 }

 return cmdq_sync_cmd_direct_resp(&cmdqs->cmdq[HINIC_CMDQ_SYNC],
      mod, cmd, buf_in, resp);
}
