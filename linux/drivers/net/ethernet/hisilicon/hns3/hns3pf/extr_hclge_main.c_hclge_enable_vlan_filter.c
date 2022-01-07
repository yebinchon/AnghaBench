
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnae3_handle {int netdev_flags; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int revision; } ;


 int HCLGE_FILTER_FE_EGRESS ;
 int HCLGE_FILTER_FE_EGRESS_V1_B ;
 int HCLGE_FILTER_FE_INGRESS ;
 int HCLGE_FILTER_TYPE_PORT ;
 int HCLGE_FILTER_TYPE_VF ;
 int HNAE3_VLAN_FLTR ;
 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;
 int hclge_set_vlan_filter_ctrl (struct hclge_dev*,int ,int ,int,int ) ;

__attribute__((used)) static void hclge_enable_vlan_filter(struct hnae3_handle *handle, bool enable)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 if (hdev->pdev->revision >= 0x21) {
  hclge_set_vlan_filter_ctrl(hdev, HCLGE_FILTER_TYPE_VF,
        HCLGE_FILTER_FE_EGRESS, enable, 0);
  hclge_set_vlan_filter_ctrl(hdev, HCLGE_FILTER_TYPE_PORT,
        HCLGE_FILTER_FE_INGRESS, enable, 0);
 } else {
  hclge_set_vlan_filter_ctrl(hdev, HCLGE_FILTER_TYPE_VF,
        HCLGE_FILTER_FE_EGRESS_V1_B, enable,
        0);
 }
 if (enable)
  handle->netdev_flags |= HNAE3_VLAN_FLTR;
 else
  handle->netdev_flags &= ~HNAE3_VLAN_FLTR;
}
