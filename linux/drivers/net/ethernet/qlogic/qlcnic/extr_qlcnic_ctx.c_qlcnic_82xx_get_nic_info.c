
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_info_le {int max_mtu; int capabilities; int max_rx_ques; int max_tx_ques; int switch_mode; int phys_port; int max_tx_bw; int min_tx_bw; int op_mode; int pci_func; } ;
struct qlcnic_info {void* max_mtu; int capabilities; void* max_rx_ques; void* max_tx_ques; void* switch_mode; void* phys_port; void* max_tx_bw; void* min_tx_bw; void* op_mode; void* pci_func; } ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LSD (int ) ;
 int MSD (int ) ;
 int QLCNIC_CMD_GET_NIC_INFO ;
 int QLCNIC_RCODE_SUCCESS ;
 int dev_err (int *,char*,int) ;
 void* dma_alloc_coherent (int *,size_t,int *,int ) ;
 int dma_free_coherent (int *,size_t,void*,int ) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

int qlcnic_82xx_get_nic_info(struct qlcnic_adapter *adapter,
        struct qlcnic_info *npar_info, u8 func_id)
{
 int err;
 dma_addr_t nic_dma_t;
 const struct qlcnic_info_le *nic_info;
 void *nic_info_addr;
 struct qlcnic_cmd_args cmd;
 size_t nic_size = sizeof(struct qlcnic_info_le);

 nic_info_addr = dma_alloc_coherent(&adapter->pdev->dev, nic_size,
        &nic_dma_t, GFP_KERNEL);
 if (!nic_info_addr)
  return -ENOMEM;

 nic_info = nic_info_addr;

 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_GET_NIC_INFO);
 if (err)
  goto out_free_dma;

 cmd.req.arg[1] = MSD(nic_dma_t);
 cmd.req.arg[2] = LSD(nic_dma_t);
 cmd.req.arg[3] = (func_id << 16 | nic_size);
 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err != QLCNIC_RCODE_SUCCESS) {
  dev_err(&adapter->pdev->dev,
   "Failed to get nic info%d\n", err);
  err = -EIO;
 } else {
  npar_info->pci_func = le16_to_cpu(nic_info->pci_func);
  npar_info->op_mode = le16_to_cpu(nic_info->op_mode);
  npar_info->min_tx_bw = le16_to_cpu(nic_info->min_tx_bw);
  npar_info->max_tx_bw = le16_to_cpu(nic_info->max_tx_bw);
  npar_info->phys_port = le16_to_cpu(nic_info->phys_port);
  npar_info->switch_mode = le16_to_cpu(nic_info->switch_mode);
  npar_info->max_tx_ques = le16_to_cpu(nic_info->max_tx_ques);
  npar_info->max_rx_ques = le16_to_cpu(nic_info->max_rx_ques);
  npar_info->capabilities = le32_to_cpu(nic_info->capabilities);
  npar_info->max_mtu = le16_to_cpu(nic_info->max_mtu);
 }

 qlcnic_free_mbx_args(&cmd);
out_free_dma:
 dma_free_coherent(&adapter->pdev->dev, nic_size, nic_info_addr,
     nic_dma_t);

 return err;
}
