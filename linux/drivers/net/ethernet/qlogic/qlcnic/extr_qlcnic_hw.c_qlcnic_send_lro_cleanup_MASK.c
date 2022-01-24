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
struct qlcnic_nic_req {void* req_hdr; void* qhdr; } ;
struct qlcnic_adapter {TYPE_1__* netdev; scalar_t__ portnum; int /*<<< orphan*/  state; } ;
struct cmd_desc_type0 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QLCNIC_H2C_OPCODE_LRO_REQUEST ; 
 int QLCNIC_HOST_REQUEST ; 
 scalar_t__ QLCNIC_LRO_REQUEST_CLEANUP ; 
 int /*<<< orphan*/  __QLCNIC_FW_ATTACHED ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_nic_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter)
{
	struct qlcnic_nic_req req;
	u64 word;
	int rv;

	if (!FUNC4(__QLCNIC_FW_ATTACHED, &adapter->state))
		return 0;

	FUNC2(&req, 0, sizeof(struct qlcnic_nic_req));
	req.qhdr = FUNC0(QLCNIC_HOST_REQUEST << 23);

	word = QLCNIC_H2C_OPCODE_LRO_REQUEST |
		((u64)adapter->portnum << 16) |
		((u64)QLCNIC_LRO_REQUEST_CLEANUP << 56) ;

	req.req_hdr = FUNC0(word);

	rv = FUNC3(adapter, (struct cmd_desc_type0 *)&req, 1);
	if (rv != 0)
		FUNC1(&adapter->netdev->dev,
				 "could not cleanup lro flows\n");

	return rv;
}