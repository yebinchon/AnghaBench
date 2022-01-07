
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hclge_tx_vlan_type_cfg_cmd {void* in_vlan_type; void* ot_vlan_type; } ;
struct hclge_rx_vlan_type_cfg_cmd {void* in_sec_vlan_type; void* in_fst_vlan_type; void* ot_sec_vlan_type; void* ot_fst_vlan_type; } ;
struct TYPE_3__ {int tx_in_vlan_type; int tx_ot_vlan_type; int rx_in_sec_vlan_type; int rx_in_fst_vlan_type; int rx_ot_sec_vlan_type; int rx_ot_fst_vlan_type; } ;
struct hclge_dev {TYPE_2__* pdev; int hw; TYPE_1__ vlan_type_cfg; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_4__ {int dev; } ;


 int HCLGE_OPC_MAC_VLAN_INSERT ;
 int HCLGE_OPC_MAC_VLAN_TYPE_ID ;
 void* cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_set_vlan_protocol_type(struct hclge_dev *hdev)
{
 struct hclge_rx_vlan_type_cfg_cmd *rx_req;
 struct hclge_tx_vlan_type_cfg_cmd *tx_req;
 struct hclge_desc desc;
 int status;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_MAC_VLAN_TYPE_ID, 0);
 rx_req = (struct hclge_rx_vlan_type_cfg_cmd *)desc.data;
 rx_req->ot_fst_vlan_type =
  cpu_to_le16(hdev->vlan_type_cfg.rx_ot_fst_vlan_type);
 rx_req->ot_sec_vlan_type =
  cpu_to_le16(hdev->vlan_type_cfg.rx_ot_sec_vlan_type);
 rx_req->in_fst_vlan_type =
  cpu_to_le16(hdev->vlan_type_cfg.rx_in_fst_vlan_type);
 rx_req->in_sec_vlan_type =
  cpu_to_le16(hdev->vlan_type_cfg.rx_in_sec_vlan_type);

 status = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (status) {
  dev_err(&hdev->pdev->dev,
   "Send rxvlan protocol type command fail, ret =%d\n",
   status);
  return status;
 }

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_MAC_VLAN_INSERT, 0);

 tx_req = (struct hclge_tx_vlan_type_cfg_cmd *)desc.data;
 tx_req->ot_vlan_type = cpu_to_le16(hdev->vlan_type_cfg.tx_ot_vlan_type);
 tx_req->in_vlan_type = cpu_to_le16(hdev->vlan_type_cfg.tx_in_vlan_type);

 status = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (status)
  dev_err(&hdev->pdev->dev,
   "Send txvlan protocol type command fail, ret =%d\n",
   status);

 return status;
}
