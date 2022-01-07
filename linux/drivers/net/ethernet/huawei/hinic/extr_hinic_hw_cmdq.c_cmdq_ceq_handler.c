
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hw_wqe {int cmdq_wqe; } ;
struct hinic_cmdqs {struct hinic_hwif* hwif; struct hinic_cmdq* cmdq; } ;
struct hinic_cmdq_header {int saved_data; } ;
struct hinic_cmdq {int wq; } ;
typedef enum hinic_cmdq_type { ____Placeholder_hinic_cmdq_type } hinic_cmdq_type ;


 int ARM ;
 int CMDQ_CEQE_GET (int ,int ) ;
 struct hinic_cmdq_header* CMDQ_WQE_HEADER (int *) ;
 scalar_t__ HINIC_SAVED_DATA_GET (int ,int ) ;
 int HINIC_SET_ARM_CMDQ ;
 scalar_t__ IS_ERR (struct hinic_hw_wqe*) ;
 int TYPE ;
 int WQE_LCMD_SIZE ;
 int WQE_SCMD_SIZE ;
 int be32_to_cpu (int ) ;
 scalar_t__ cmdq_arm_ceq_handler (struct hinic_cmdq*,int *) ;
 scalar_t__ cmdq_cmd_ceq_handler (struct hinic_cmdq*,int ,int *) ;
 int dev_err (int *,char*) ;
 struct hinic_hw_wqe* hinic_read_wqe (int ,int ,int *) ;
 int hinic_set_arm_bit (struct hinic_cmdqs*,int ,int) ;

__attribute__((used)) static void cmdq_ceq_handler(void *handle, u32 ceqe_data)
{
 enum hinic_cmdq_type cmdq_type = CMDQ_CEQE_GET(ceqe_data, TYPE);
 struct hinic_cmdqs *cmdqs = (struct hinic_cmdqs *)handle;
 struct hinic_cmdq *cmdq = &cmdqs->cmdq[cmdq_type];
 struct hinic_cmdq_header *header;
 struct hinic_hw_wqe *hw_wqe;
 int err, set_arm = 0;
 u32 saved_data;
 u16 ci;


 while ((hw_wqe = hinic_read_wqe(cmdq->wq, WQE_SCMD_SIZE, &ci))) {
  if (IS_ERR(hw_wqe))
   break;

  header = CMDQ_WQE_HEADER(&hw_wqe->cmdq_wqe);
  saved_data = be32_to_cpu(header->saved_data);

  if (HINIC_SAVED_DATA_GET(saved_data, ARM)) {

   set_arm = 0;

   if (cmdq_arm_ceq_handler(cmdq, &hw_wqe->cmdq_wqe))
    break;
  } else {
   set_arm = 1;

   hw_wqe = hinic_read_wqe(cmdq->wq, WQE_LCMD_SIZE, &ci);
   if (IS_ERR(hw_wqe))
    break;

   if (cmdq_cmd_ceq_handler(cmdq, ci, &hw_wqe->cmdq_wqe))
    break;
  }
 }

 if (set_arm) {
  struct hinic_hwif *hwif = cmdqs->hwif;
  struct pci_dev *pdev = hwif->pdev;

  err = hinic_set_arm_bit(cmdqs, HINIC_SET_ARM_CMDQ, cmdq_type);
  if (err)
   dev_err(&pdev->dev, "Failed to set arm for CMDQ\n");
 }
}
