
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ num_vectors; int roce_io_base; int netdev; int base_vector; } ;
struct TYPE_5__ {int netdev; } ;
struct hnae3_handle {int numa_node_mask; int ae_algo; int pdev; TYPE_2__ rinfo; TYPE_1__ kinfo; } ;
struct hclge_vport {TYPE_4__* back; struct hnae3_handle roce; struct hnae3_handle nic; } ;
struct TYPE_7__ {int io_base; } ;
struct TYPE_8__ {scalar_t__ num_roce_msi; scalar_t__ num_msi_left; TYPE_3__ hw; int roce_base_vector; } ;


 int EINVAL ;

__attribute__((used)) static int hclge_init_roce_base_info(struct hclge_vport *vport)
{
 struct hnae3_handle *roce = &vport->roce;
 struct hnae3_handle *nic = &vport->nic;

 roce->rinfo.num_vectors = vport->back->num_roce_msi;

 if (vport->back->num_msi_left < vport->roce.rinfo.num_vectors ||
     vport->back->num_msi_left == 0)
  return -EINVAL;

 roce->rinfo.base_vector = vport->back->roce_base_vector;

 roce->rinfo.netdev = nic->kinfo.netdev;
 roce->rinfo.roce_io_base = vport->back->hw.io_base;

 roce->pdev = nic->pdev;
 roce->ae_algo = nic->ae_algo;
 roce->numa_node_mask = nic->numa_node_mask;

 return 0;
}
