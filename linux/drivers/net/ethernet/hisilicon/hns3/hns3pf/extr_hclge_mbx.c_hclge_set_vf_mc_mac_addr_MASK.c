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
typedef  int /*<<< orphan*/  u8 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {int /*<<< orphan*/ * msg; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HCLGE_MAC_ADDR_MC ; 
 int /*<<< orphan*/  HCLGE_MBX_MAC_VLAN_MC_ADD ; 
 int /*<<< orphan*/  HCLGE_MBX_MAC_VLAN_MC_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hclge_vport*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_vport*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hclge_vport*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_vport*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hclge_vport *vport,
				    struct hclge_mbx_vf_to_pf_cmd *mbx_req,
				    bool gen_resp)
{
	const u8 *mac_addr = (const u8 *)(&mbx_req->msg[2]);
	struct hclge_dev *hdev = vport->back;
	u8 resp_len = 0;
	u8 resp_data;
	int status;

	if (mbx_req->msg[1] == HCLGE_MBX_MAC_VLAN_MC_ADD) {
		status = FUNC1(vport, mac_addr);
		if (!status)
			FUNC2(vport, mac_addr,
						  HCLGE_MAC_ADDR_MC);
	} else if (mbx_req->msg[1] == HCLGE_MBX_MAC_VLAN_MC_REMOVE) {
		status = FUNC4(vport, mac_addr);
		if (!status)
			FUNC5(vport, mac_addr,
						 false, HCLGE_MAC_ADDR_MC);
	} else {
		FUNC0(&hdev->pdev->dev,
			"failed to set mcast mac addr, unknown subcode %d\n",
			mbx_req->msg[1]);
		return -EIO;
	}

	if (gen_resp)
		FUNC3(vport, mbx_req, status,
				     &resp_data, resp_len);

	return 0;
}