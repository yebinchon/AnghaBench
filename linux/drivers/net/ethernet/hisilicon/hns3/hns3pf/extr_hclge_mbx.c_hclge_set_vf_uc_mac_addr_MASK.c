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
struct hclge_mbx_vf_to_pf_cmd {int mbx_need_resp; int /*<<< orphan*/ * msg; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HCLGE_MAC_ADDR_UC ; 
 int /*<<< orphan*/  HCLGE_MBX_MAC_VLAN_UC_ADD ; 
 int /*<<< orphan*/  HCLGE_MBX_MAC_VLAN_UC_MODIFY ; 
 int /*<<< orphan*/  HCLGE_MBX_MAC_VLAN_UC_REMOVE ; 
 int HCLGE_MBX_NEED_RESP_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hclge_vport*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_vport*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hclge_vport*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_vport*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hclge_vport *vport,
				    struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
	const u8 *mac_addr = (const u8 *)(&mbx_req->msg[2]);
	struct hclge_dev *hdev = vport->back;
	int status;

	if (mbx_req->msg[1] == HCLGE_MBX_MAC_VLAN_UC_MODIFY) {
		const u8 *old_addr = (const u8 *)(&mbx_req->msg[8]);

		FUNC4(vport, old_addr);
		status = FUNC1(vport, mac_addr);
		if (status) {
			FUNC1(vport, old_addr);
		} else {
			FUNC5(vport, mac_addr,
						 false, HCLGE_MAC_ADDR_UC);
			FUNC2(vport, mac_addr,
						  HCLGE_MAC_ADDR_UC);
		}
	} else if (mbx_req->msg[1] == HCLGE_MBX_MAC_VLAN_UC_ADD) {
		status = FUNC1(vport, mac_addr);
		if (!status)
			FUNC2(vport, mac_addr,
						  HCLGE_MAC_ADDR_UC);
	} else if (mbx_req->msg[1] == HCLGE_MBX_MAC_VLAN_UC_REMOVE) {
		status = FUNC4(vport, mac_addr);
		if (!status)
			FUNC5(vport, mac_addr,
						 false, HCLGE_MAC_ADDR_UC);
	} else {
		FUNC0(&hdev->pdev->dev,
			"failed to set unicast mac addr, unknown subcode %d\n",
			mbx_req->msg[1]);
		return -EIO;
	}

	if (mbx_req->mbx_need_resp & HCLGE_MBX_NEED_RESP_BIT)
		FUNC3(vport, mbx_req, status, NULL, 0);

	return 0;
}