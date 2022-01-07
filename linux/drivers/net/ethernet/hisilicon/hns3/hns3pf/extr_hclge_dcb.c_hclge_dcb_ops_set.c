
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_knic_private_info {int * dcb_ops; } ;
struct TYPE_2__ {struct hnae3_knic_private_info kinfo; } ;
struct hclge_vport {scalar_t__ vport_id; TYPE_1__ nic; } ;
struct hclge_dev {int dcbx_cap; struct hclge_vport* vport; } ;


 int DCB_CAP_DCBX_HOST ;
 int DCB_CAP_DCBX_VER_IEEE ;
 int hnae3_dev_dcb_supported (struct hclge_dev*) ;
 int hns3_dcb_ops ;

void hclge_dcb_ops_set(struct hclge_dev *hdev)
{
 struct hclge_vport *vport = hdev->vport;
 struct hnae3_knic_private_info *kinfo;




 if (!hnae3_dev_dcb_supported(hdev) ||
     vport->vport_id != 0)
  return;

 kinfo = &vport->nic.kinfo;
 kinfo->dcb_ops = &hns3_dcb_ops;
 hdev->dcbx_cap = DCB_CAP_DCBX_VER_IEEE | DCB_CAP_DCBX_HOST;
}
