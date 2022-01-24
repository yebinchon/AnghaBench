#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct hclge_vport_vtag_tx_cfg_cmd {unsigned int vf_offset; unsigned int* vf_bitmap; int /*<<< orphan*/  vport_vlan_cfg; void* def_vlan_tag2; void* def_vlan_tag1; } ;
struct hclge_tx_vtag_cfg {scalar_t__ insert_tag2_en; scalar_t__ insert_tag1_en; scalar_t__ accept_untag2; scalar_t__ accept_tag2; scalar_t__ accept_untag1; scalar_t__ accept_tag1; int /*<<< orphan*/  default_tag2; int /*<<< orphan*/  default_tag1; } ;
struct hclge_vport {unsigned int vport_id; struct hclge_dev* back; struct hclge_tx_vtag_cfg txvlan_cfg; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_ACCEPT_TAG1_B ; 
 int /*<<< orphan*/  HCLGE_ACCEPT_TAG2_B ; 
 int /*<<< orphan*/  HCLGE_ACCEPT_UNTAG1_B ; 
 int /*<<< orphan*/  HCLGE_ACCEPT_UNTAG2_B ; 
 int /*<<< orphan*/  HCLGE_CFG_NIC_ROCE_SEL_B ; 
 int /*<<< orphan*/  HCLGE_OPC_VLAN_PORT_TX_CFG ; 
 int /*<<< orphan*/  HCLGE_PORT_INS_TAG1_EN_B ; 
 int /*<<< orphan*/  HCLGE_PORT_INS_TAG2_EN_B ; 
 unsigned int HCLGE_VF_NUM_PER_BYTE ; 
 unsigned int HCLGE_VF_NUM_PER_CMD ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct hclge_vport *vport)
{
	struct hclge_tx_vtag_cfg *vcfg = &vport->txvlan_cfg;
	struct hclge_vport_vtag_tx_cfg_cmd *req;
	struct hclge_dev *hdev = vport->back;
	struct hclge_desc desc;
	u16 bmap_index;
	int status;

	FUNC3(&desc, HCLGE_OPC_VLAN_PORT_TX_CFG, false);

	req = (struct hclge_vport_vtag_tx_cfg_cmd *)desc.data;
	req->def_vlan_tag1 = FUNC0(vcfg->default_tag1);
	req->def_vlan_tag2 = FUNC0(vcfg->default_tag2);
	FUNC4(req->vport_vlan_cfg, HCLGE_ACCEPT_TAG1_B,
		      vcfg->accept_tag1 ? 1 : 0);
	FUNC4(req->vport_vlan_cfg, HCLGE_ACCEPT_UNTAG1_B,
		      vcfg->accept_untag1 ? 1 : 0);
	FUNC4(req->vport_vlan_cfg, HCLGE_ACCEPT_TAG2_B,
		      vcfg->accept_tag2 ? 1 : 0);
	FUNC4(req->vport_vlan_cfg, HCLGE_ACCEPT_UNTAG2_B,
		      vcfg->accept_untag2 ? 1 : 0);
	FUNC4(req->vport_vlan_cfg, HCLGE_PORT_INS_TAG1_EN_B,
		      vcfg->insert_tag1_en ? 1 : 0);
	FUNC4(req->vport_vlan_cfg, HCLGE_PORT_INS_TAG2_EN_B,
		      vcfg->insert_tag2_en ? 1 : 0);
	FUNC4(req->vport_vlan_cfg, HCLGE_CFG_NIC_ROCE_SEL_B, 0);

	req->vf_offset = vport->vport_id / HCLGE_VF_NUM_PER_CMD;
	bmap_index = vport->vport_id % HCLGE_VF_NUM_PER_CMD /
			HCLGE_VF_NUM_PER_BYTE;
	req->vf_bitmap[bmap_index] =
		1U << (vport->vport_id % HCLGE_VF_NUM_PER_BYTE);

	status = FUNC2(&hdev->hw, &desc, 1);
	if (status)
		FUNC1(&hdev->pdev->dev,
			"Send port txvlan cfg command fail, ret =%d\n",
			status);

	return status;
}