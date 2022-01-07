
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_dev {int num_rx_desc; int num_tx_desc; scalar_t__ num_req_vfs; scalar_t__ num_vmdq_vport; scalar_t__ num_tqps; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_MIN_RX_DESC ;
 int HCLGE_MIN_TX_DESC ;
 int dev_info (int *,char*) ;
 int is_kdump_kernel () ;

__attribute__((used)) static void hclge_init_kdump_kernel_config(struct hclge_dev *hdev)
{



 if (!is_kdump_kernel())
  return;

 dev_info(&hdev->pdev->dev,
   "Running kdump kernel. Using minimal resources\n");


 hdev->num_tqps = hdev->num_vmdq_vport + hdev->num_req_vfs + 1;
 hdev->num_tx_desc = 64;
 hdev->num_rx_desc = 64;
}
