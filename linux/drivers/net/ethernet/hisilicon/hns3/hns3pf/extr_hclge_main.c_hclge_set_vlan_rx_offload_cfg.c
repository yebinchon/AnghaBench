
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct hclge_vport_vtag_rx_cfg_cmd {unsigned int vf_offset; unsigned int* vf_bitmap; int vport_vlan_cfg; } ;
struct hclge_rx_vtag_cfg {scalar_t__ vlan2_vlan_prionly; scalar_t__ vlan1_vlan_prionly; scalar_t__ strip_tag2_en; scalar_t__ strip_tag1_en; } ;
struct hclge_vport {unsigned int vport_id; struct hclge_dev* back; struct hclge_rx_vtag_cfg rxvlan_cfg; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_VLAN_PORT_RX_CFG ;
 int HCLGE_REM_TAG1_EN_B ;
 int HCLGE_REM_TAG2_EN_B ;
 int HCLGE_SHOW_TAG1_EN_B ;
 int HCLGE_SHOW_TAG2_EN_B ;
 unsigned int HCLGE_VF_NUM_PER_BYTE ;
 unsigned int HCLGE_VF_NUM_PER_CMD ;
 int dev_err (int *,char*,int) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;
 int hnae3_set_bit (int ,int ,int) ;

__attribute__((used)) static int hclge_set_vlan_rx_offload_cfg(struct hclge_vport *vport)
{
 struct hclge_rx_vtag_cfg *vcfg = &vport->rxvlan_cfg;
 struct hclge_vport_vtag_rx_cfg_cmd *req;
 struct hclge_dev *hdev = vport->back;
 struct hclge_desc desc;
 u16 bmap_index;
 int status;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_VLAN_PORT_RX_CFG, 0);

 req = (struct hclge_vport_vtag_rx_cfg_cmd *)desc.data;
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_REM_TAG1_EN_B,
        vcfg->strip_tag1_en ? 1 : 0);
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_REM_TAG2_EN_B,
        vcfg->strip_tag2_en ? 1 : 0);
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_SHOW_TAG1_EN_B,
        vcfg->vlan1_vlan_prionly ? 1 : 0);
 hnae3_set_bit(req->vport_vlan_cfg, HCLGE_SHOW_TAG2_EN_B,
        vcfg->vlan2_vlan_prionly ? 1 : 0);

 req->vf_offset = vport->vport_id / HCLGE_VF_NUM_PER_CMD;
 bmap_index = vport->vport_id % HCLGE_VF_NUM_PER_CMD /
   HCLGE_VF_NUM_PER_BYTE;
 req->vf_bitmap[bmap_index] =
  1U << (vport->vport_id % HCLGE_VF_NUM_PER_BYTE);

 status = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (status)
  dev_err(&hdev->pdev->dev,
   "Send port rxvlan cfg command fail, ret =%d\n",
   status);

 return status;
}
