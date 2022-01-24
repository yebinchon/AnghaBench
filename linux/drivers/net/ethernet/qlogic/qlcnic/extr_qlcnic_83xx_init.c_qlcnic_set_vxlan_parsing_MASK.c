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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/ * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {int /*<<< orphan*/  netdev; TYPE_2__* ahw; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {int /*<<< orphan*/  vxlan_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_SET_INGRESS_ENCAP ; 
 int /*<<< orphan*/  QLCNIC_DISABLE_INGRESS_ENCAP_PARSING ; 
 int /*<<< orphan*/  QLCNIC_ENABLE_INGRESS_ENCAP_PARSING ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_cmd_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_cmd_args*) ; 
 int FUNC5 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

__attribute__((used)) static int FUNC6(struct qlcnic_adapter *adapter,
				    bool state)
{
	u16 vxlan_port = adapter->ahw->vxlan_port;
	struct qlcnic_cmd_args cmd;
	int ret = 0;

	FUNC0(&cmd, 0, sizeof(cmd));

	ret = FUNC3(&cmd, adapter,
				    QLCNIC_CMD_SET_INGRESS_ENCAP);
	if (ret)
		return ret;

	cmd.req.arg[1] = state ? QLCNIC_ENABLE_INGRESS_ENCAP_PARSING :
				 QLCNIC_DISABLE_INGRESS_ENCAP_PARSING;

	ret = FUNC5(adapter, &cmd);
	if (ret)
		FUNC1(adapter->netdev,
			   "Failed to %s VXLAN parsing for port %d\n",
			   state ? "enable" : "disable", vxlan_port);
	else
		FUNC2(adapter->netdev,
			    "%s VXLAN parsing for port %d\n",
			    state ? "Enabled" : "Disabled", vxlan_port);

	FUNC4(&cmd);

	return ret;
}