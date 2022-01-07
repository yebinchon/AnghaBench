
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hnae3_handle {int numa_node_mask; int * ae_algo; TYPE_1__* pdev; } ;
struct hclge_vport {struct hclge_dev* back; struct hnae3_handle nic; } ;
struct hclge_dev {TYPE_1__* pdev; int num_rx_desc; int num_tx_desc; int numa_node_mask; } ;
struct TYPE_2__ {int dev; } ;


 int ae_algo ;
 int dev_err (int *,char*,int) ;
 int hclge_knic_setup (struct hclge_vport*,int ,int ,int ) ;

__attribute__((used)) static int hclge_vport_setup(struct hclge_vport *vport, u16 num_tqps)
{
 struct hnae3_handle *nic = &vport->nic;
 struct hclge_dev *hdev = vport->back;
 int ret;

 nic->pdev = hdev->pdev;
 nic->ae_algo = &ae_algo;
 nic->numa_node_mask = hdev->numa_node_mask;

 ret = hclge_knic_setup(vport, num_tqps,
          hdev->num_tx_desc, hdev->num_rx_desc);
 if (ret)
  dev_err(&hdev->pdev->dev, "knic setup failed %d\n", ret);

 return ret;
}
