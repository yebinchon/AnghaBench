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
typedef  int u64 ;
typedef  int u32 ;
struct qlcnic_nic_req {void** words; void* req_hdr; void* qhdr; } ;
struct qlcnic_adapter {int flags; TYPE_1__* netdev; scalar_t__ portnum; } ;
struct cmd_desc_type0 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QLCNIC_BRIDGE_ENABLED ; 
 int QLCNIC_H2C_OPCODE_CONFIG_BRIDGING ; 
 int QLCNIC_HOST_REQUEST ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_nic_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ; 

int FUNC4(struct qlcnic_adapter *adapter, u32 enable)
{
	struct qlcnic_nic_req req;
	u64 word;
	int rv;

	if (!!(adapter->flags & QLCNIC_BRIDGE_ENABLED) == enable)
		return 0;

	FUNC2(&req, 0, sizeof(struct qlcnic_nic_req));

	req.qhdr = FUNC0(QLCNIC_HOST_REQUEST << 23);

	word = QLCNIC_H2C_OPCODE_CONFIG_BRIDGING |
		((u64)adapter->portnum << 16);
	req.req_hdr = FUNC0(word);

	req.words[0] = FUNC0(enable);

	rv = FUNC3(adapter, (struct cmd_desc_type0 *)&req, 1);
	if (rv != 0)
		FUNC1(&adapter->netdev->dev,
			"Could not send configure bridge mode request\n");

	adapter->flags ^= QLCNIC_BRIDGE_ENABLED;

	return rv;
}