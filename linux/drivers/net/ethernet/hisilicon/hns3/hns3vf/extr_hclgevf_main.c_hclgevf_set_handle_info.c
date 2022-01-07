
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_handle {int flags; int numa_node_mask; TYPE_1__* pdev; int * ae_algo; } ;
struct hclgevf_dev {TYPE_1__* pdev; int numa_node_mask; struct hnae3_handle nic; } ;
struct TYPE_2__ {int dev; } ;


 int HNAE3_SUPPORT_VF ;
 int ae_algovf ;
 int dev_err (int *,char*,int) ;
 int hclgevf_knic_setup (struct hclgevf_dev*) ;

__attribute__((used)) static int hclgevf_set_handle_info(struct hclgevf_dev *hdev)
{
 struct hnae3_handle *nic = &hdev->nic;
 int ret;

 nic->ae_algo = &ae_algovf;
 nic->pdev = hdev->pdev;
 nic->numa_node_mask = hdev->numa_node_mask;
 nic->flags |= HNAE3_SUPPORT_VF;

 ret = hclgevf_knic_setup(hdev);
 if (ret)
  dev_err(&hdev->pdev->dev, "VF knic setup failed %d\n",
   ret);
 return ret;
}
