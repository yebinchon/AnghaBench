
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct hclge_vport_vtag_tx_cfg_cmd {unsigned int vf_offset; unsigned int* vf_bitmap; int vport_vlan_cfg; void* def_vlan_tag2; void* def_vlan_tag1; } ;
struct hclge_tx_vtag_cfg {scalar_t__ insert_tag2_en; scalar_t__ insert_tag1_en; scalar_t__ accept_untag2; scalar_t__ accept_tag2; scalar_t__ accept_untag1; scalar_t__ accept_tag1; int default_tag2; int default_tag1; } ;
struct hclge_vport {unsigned int vport_id; struct hclge_dev* back; struct hclge_tx_vtag_cfg txvlan_cfg; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_ACCEPT_TAG1_B ;
 int HCLGE_ACCEPT_TAG2_B ;
 int HCLGE_ACCEPT_UNTAG1_B ;
 int HCLGE_ACCEPT_UNTAG2_B ;
 int HCLGE_CFG_NIC_ROCE_SEL_B ;
 int HCLGE_OPC_VLAN_PORT_TX_CFG ;
 int HCLGE_PORT_INS_TAG1_EN_B ;
 int HCLGE_PORT_INS_TAG2_EN_B ;
 unsigned int HCLGE_VF_NUM_PER_BYTE ;
 unsigned int HCLGE_VF_NUM_PER_CMD ;
 void* cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int) ;

__attribute__((used)) static int hclge_set_vlan_tx_offload_cfg(struct hclge_vport *vport)
{
 struct hclge_tx_vtag_cfg *vcfg = &vport->txvlan_cfg;
 struct hclge_vport_vtag_tx_cfg_cmd *req;
 struct hclge_dev *hdev = vport->back;
 struct hclge_desc desc;
 u16 bmap_index;
 int status;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_VLAN_PORT_TX_CFG, 0);

 req = (struct hclge_vport_vtag_tx_cfg_cmd *)desc.data;
 req->def_vlan_tag1 = cpu_to_le16(vcfg->default_tag1);
 req->def_vlan_tag2 = cpu_to_le16(vcfg->default_tag2);
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_ACCEPT_TAG1_B,
        vcfg->accept_tag1 ? 1 : 0);
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_ACCEPT_UNTAG1_B,
        vcfg->accept_untag1 ? 1 : 0);
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_ACCEPT_TAG2_B,
        vcfg->accept_tag2 ? 1 : 0);
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_ACCEPT_UNTAG2_B,
        vcfg->accept_untag2 ? 1 : 0);
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_PORT_INS_TAG1_EN_B,
        vcfg->insert_tag1_en ? 1 : 0);
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_PORT_INS_TAG2_EN_B,
        vcfg->insert_tag2_en ? 1 : 0);
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_CFG_NIC_ROCE_SEL_B, 0);

 req->vf_offset = vport->vport_id / HCLGE_VF_NUM_PER_CMD;
 bmap_index = vport->vport_id % HCLGE_VF_NUM_PER_CMD /
   HCLGE_VF_NUM_PER_BYTE;
 req->vf_bitmap[bmap_index] =
  1U << (vport->vport_id % HCLGE_VF_NUM_PER_BYTE);

 status = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (status)
  dev_err(&hdev->pdev->dev,
   "Send port txvlan cfg command fail, ret =%d\n",
   status);

 return status;
}
