
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_vectors; int roce_io_base; int netdev; int base_vector; } ;
struct TYPE_4__ {int netdev; } ;
struct hnae3_handle {int numa_node_mask; int ae_algo; int pdev; TYPE_2__ rinfo; TYPE_1__ kinfo; } ;
struct TYPE_6__ {int io_base; } ;
struct hclgevf_dev {scalar_t__ num_roce_msix; scalar_t__ num_msi_left; TYPE_3__ hw; int roce_base_vector; struct hnae3_handle nic; struct hnae3_handle roce; } ;


 int EINVAL ;

__attribute__((used)) static int hclgevf_init_roce_base_info(struct hclgevf_dev *hdev)
{
 struct hnae3_handle *roce = &hdev->roce;
 struct hnae3_handle *nic = &hdev->nic;

 roce->rinfo.num_vectors = hdev->num_roce_msix;

 if (hdev->num_msi_left < roce->rinfo.num_vectors ||
     hdev->num_msi_left == 0)
  return -EINVAL;

 roce->rinfo.base_vector = hdev->roce_base_vector;

 roce->rinfo.netdev = nic->kinfo.netdev;
 roce->rinfo.roce_io_base = hdev->hw.io_base;

 roce->pdev = nic->pdev;
 roce->ae_algo = nic->ae_algo;
 roce->numa_node_mask = nic->numa_node_mask;

 return 0;
}
