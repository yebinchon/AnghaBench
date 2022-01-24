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
struct qlcnic_fw_dump {int /*<<< orphan*/  tmpl_hdr; int /*<<< orphan*/  clr; } ;
struct qlcnic_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  flags; TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int flag; } ;
struct TYPE_2__ {struct qlcnic_fw_dump fw_dump; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  QLCNIC_DISABLE_FW_DUMP 133 
#define  QLCNIC_ENABLE_FW_DUMP 132 
#define  QLCNIC_FORCE_FW_DUMP_KEY 131 
#define  QLCNIC_FORCE_FW_RESET 130 
 int /*<<< orphan*/  QLCNIC_FW_RESET_OWNER ; 
#define  QLCNIC_RESET_QUIESCENT 129 
#define  QLCNIC_SET_QUIESCENT 128 
 int /*<<< orphan*/  __QLCNIC_MAINTENANCE_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 struct qlcnic_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,int) ; 
 int FUNC6 (struct qlcnic_adapter*) ; 
 int FUNC7 (struct qlcnic_adapter*) ; 
 int* qlcnic_fw_dump_level ; 
 int FUNC8 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct net_device *netdev, struct ethtool_dump *val)
{
	struct qlcnic_adapter *adapter = FUNC3(netdev);
	struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;
	bool valid_mask = false;
	int i, ret = 0;

	switch (val->flag) {
	case QLCNIC_FORCE_FW_DUMP_KEY:
		if (!fw_dump->tmpl_hdr) {
			FUNC1(netdev, "FW dump not supported\n");
			ret = -EOPNOTSUPP;
			break;
		}

		if (!FUNC4(adapter)) {
			FUNC2(netdev, "FW dump not enabled\n");
			ret = -EOPNOTSUPP;
			break;
		}

		if (fw_dump->clr) {
			FUNC2(netdev,
				    "Previous dump not cleared, not forcing dump\n");
			break;
		}

		FUNC2(netdev, "Forcing a FW dump\n");
		FUNC5(adapter, val->flag);
		break;
	case QLCNIC_DISABLE_FW_DUMP:
		if (!fw_dump->tmpl_hdr) {
			FUNC1(netdev, "FW dump not supported\n");
			ret = -EOPNOTSUPP;
			break;
		}

		ret = FUNC6(adapter);
		break;

	case QLCNIC_ENABLE_FW_DUMP:
		if (!fw_dump->tmpl_hdr) {
			FUNC1(netdev, "FW dump not supported\n");
			ret = -EOPNOTSUPP;
			break;
		}

		ret = FUNC7(adapter);
		break;

	case QLCNIC_FORCE_FW_RESET:
		FUNC2(netdev, "Forcing a FW reset\n");
		FUNC5(adapter, val->flag);
		adapter->flags &= ~QLCNIC_FW_RESET_OWNER;
		break;

	case QLCNIC_SET_QUIESCENT:
	case QLCNIC_RESET_QUIESCENT:
		if (FUNC9(__QLCNIC_MAINTENANCE_MODE, &adapter->state))
			FUNC2(netdev, "Device is in non-operational state\n");
		break;

	default:
		if (!fw_dump->tmpl_hdr) {
			FUNC1(netdev, "FW dump not supported\n");
			ret = -EOPNOTSUPP;
			break;
		}

		for (i = 0; i < FUNC0(qlcnic_fw_dump_level); i++) {
			if (val->flag == qlcnic_fw_dump_level[i]) {
				valid_mask = true;
				break;
			}
		}

		if (valid_mask) {
			ret = FUNC8(adapter, val->flag);
		} else {
			FUNC2(netdev, "Invalid dump level: 0x%x\n",
				    val->flag);
			ret = -EINVAL;
		}
	}
	return ret;
}