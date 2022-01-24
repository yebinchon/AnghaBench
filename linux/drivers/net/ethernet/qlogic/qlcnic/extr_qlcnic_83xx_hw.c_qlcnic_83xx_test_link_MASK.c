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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct qlcnic_hardware_context {void* port_type; void* supported_type; int /*<<< orphan*/  link_speed; scalar_t__ pci_base0; int /*<<< orphan*/  pci_func; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; } ;
struct qlcnic_adapter {TYPE_1__* pdev; int /*<<< orphan*/  portnum; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* PORT_DA ; 
 void* PORT_FIBRE ; 
 void* PORT_OTHER ; 
 void* PORT_TP ; 
 int /*<<< orphan*/  QLCNIC_CMD_GET_LINK_STATUS ; 
 void* QLCNIC_GBE ; 
 void* QLCNIC_XGBE ; 
#define  QLC_83XX_100M_LINK 142 
#define  QLC_83XX_10G_LINK 141 
#define  QLC_83XX_10M_LINK 140 
#define  QLC_83XX_1G_LINK 139 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  QLC_83XX_MODULE_DA_10GE_ACTIVE_CP 138 
#define  QLC_83XX_MODULE_DA_10GE_LEGACY_CP 137 
#define  QLC_83XX_MODULE_DA_10GE_PASSIVE_CP 136 
#define  QLC_83XX_MODULE_DA_1GE_PASSIVE_CP 135 
#define  QLC_83XX_MODULE_FIBRE_1000BASE_CX 134 
#define  QLC_83XX_MODULE_FIBRE_1000BASE_LX 133 
#define  QLC_83XX_MODULE_FIBRE_1000BASE_SX 132 
#define  QLC_83XX_MODULE_FIBRE_10GBASE_LR 131 
#define  QLC_83XX_MODULE_FIBRE_10GBASE_LRM 130 
#define  QLC_83XX_MODULE_FIBRE_10GBASE_SR 129 
#define  QLC_83XX_MODULE_TP_1000BASE_T 128 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPEED_10 ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  SPEED_10000 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_cmd_args*) ; 
 int FUNC7 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 scalar_t__ FUNC8 (struct qlcnic_adapter*) ; 
 int FUNC9 (scalar_t__) ; 

int FUNC10(struct qlcnic_adapter *adapter)
{
	u8 pci_func;
	int err;
	u32 config = 0, state;
	struct qlcnic_cmd_args cmd;
	struct qlcnic_hardware_context *ahw = adapter->ahw;

	if (FUNC8(adapter))
		pci_func = adapter->portnum;
	else
		pci_func = ahw->pci_func;

	state = FUNC9(ahw->pci_base0 + FUNC1(pci_func));
	if (!FUNC3(state, pci_func)) {
		FUNC4(&adapter->pdev->dev, "link state down\n");
		return config;
	}

	err = FUNC5(&cmd, adapter, QLCNIC_CMD_GET_LINK_STATUS);
	if (err)
		return err;

	err = FUNC7(adapter, &cmd);
	if (err) {
		FUNC4(&adapter->pdev->dev,
			 "Get Link Status Command failed: 0x%x\n", err);
		goto out;
	} else {
		config = cmd.rsp.arg[1];
		switch (FUNC0(config)) {
		case QLC_83XX_10M_LINK:
			ahw->link_speed = SPEED_10;
			break;
		case QLC_83XX_100M_LINK:
			ahw->link_speed = SPEED_100;
			break;
		case QLC_83XX_1G_LINK:
			ahw->link_speed = SPEED_1000;
			break;
		case QLC_83XX_10G_LINK:
			ahw->link_speed = SPEED_10000;
			break;
		default:
			ahw->link_speed = 0;
			break;
		}
		config = cmd.rsp.arg[3];
		switch (FUNC2(config)) {
		case QLC_83XX_MODULE_FIBRE_10GBASE_LRM:
		case QLC_83XX_MODULE_FIBRE_10GBASE_LR:
		case QLC_83XX_MODULE_FIBRE_10GBASE_SR:
			ahw->supported_type = PORT_FIBRE;
			ahw->port_type = QLCNIC_XGBE;
			break;
		case QLC_83XX_MODULE_FIBRE_1000BASE_SX:
		case QLC_83XX_MODULE_FIBRE_1000BASE_LX:
		case QLC_83XX_MODULE_FIBRE_1000BASE_CX:
			ahw->supported_type = PORT_FIBRE;
			ahw->port_type = QLCNIC_GBE;
			break;
		case QLC_83XX_MODULE_TP_1000BASE_T:
			ahw->supported_type = PORT_TP;
			ahw->port_type = QLCNIC_GBE;
			break;
		case QLC_83XX_MODULE_DA_10GE_PASSIVE_CP:
		case QLC_83XX_MODULE_DA_10GE_ACTIVE_CP:
		case QLC_83XX_MODULE_DA_10GE_LEGACY_CP:
		case QLC_83XX_MODULE_DA_1GE_PASSIVE_CP:
			ahw->supported_type = PORT_DA;
			ahw->port_type = QLCNIC_XGBE;
			break;
		default:
			ahw->supported_type = PORT_OTHER;
			ahw->port_type = QLCNIC_XGBE;
		}
		if (config & 1)
			err = 1;
	}
out:
	FUNC6(&cmd);
	return config;
}