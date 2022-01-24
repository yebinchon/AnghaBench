#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* netdev; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_CONFIGURE_IP_ADDR ; 
 int QLCNIC_IP_UP ; 
 int QLCNIC_RCODE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,int*) ; 
 int FUNC4 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_cmd_args*) ; 
 int FUNC6 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct qlcnic_adapter *adapter, __be32 ip,
			       int mode)
{
	int err;
	u32 temp = 0, temp_ip;
	struct qlcnic_cmd_args cmd;

	err = FUNC4(&cmd, adapter,
				    QLCNIC_CMD_CONFIGURE_IP_ADDR);
	if (err)
		return;

	FUNC3(adapter, &temp);

	if (mode == QLCNIC_IP_UP)
		cmd.req.arg[1] = 1 | temp;
	else
		cmd.req.arg[1] = 2 | temp;

	/*
	 * Adapter needs IP address in network byte order.
	 * But hardware mailbox registers go through writel(), hence IP address
	 * gets swapped on big endian architecture.
	 * To negate swapping of writel() on big endian architecture
	 * use swab32(value).
	 */

	temp_ip = FUNC7(FUNC2(ip));
	FUNC1(&cmd.req.arg[2], &temp_ip, sizeof(u32));
	err = FUNC6(adapter, &cmd);
	if (err != QLCNIC_RCODE_SUCCESS)
		FUNC0(&adapter->netdev->dev,
			"could not notify %s IP 0x%x request\n",
			(mode == QLCNIC_IP_UP) ? "Add" : "Remove", ip);

	FUNC5(&cmd);
}