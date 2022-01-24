#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_7__ {int intr_type; int tx_steering_type; scalar_t__ addr_learn_en; scalar_t__ rth_steering; } ;
struct vxgedev {char* no_of_vpath; TYPE_6__* devh; TYPE_2__* ndev; TYPE_1__ config; } ;
struct TYPE_11__ {TYPE_4__* vp_config; } ;
struct TYPE_12__ {TYPE_5__ config; } ;
struct TYPE_9__ {int /*<<< orphan*/  max_frags; } ;
struct TYPE_10__ {TYPE_3__ fifo; scalar_t__ rpa_strip_vlan_tag; int /*<<< orphan*/  mtu; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
#define  INTA 134 
#define  MSI_X 133 
#define  NO_STEERING 132 
#define  TX_MULTIQ_STEERING 131 
#define  TX_PORT_STEERING 130 
#define  TX_PRIORITY_STEERING 129 
#define  TX_VLAN_STEERING 128 
 int /*<<< orphan*/  VXGE_ERR ; 
 int VXGE_HW_MAX_VIRTUAL_PATHS ; 
 int /*<<< orphan*/  VXGE_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vxgedev *vdev, u64 vpath_mask)
{
	int i;

	FUNC1(VXGE_TRACE,
		"%s: %d Vpath(s) opened",
		vdev->ndev->name, vdev->no_of_vpath);

	switch (vdev->config.intr_type) {
	case INTA:
		FUNC1(VXGE_TRACE,
			"%s: Interrupt type INTA", vdev->ndev->name);
		break;

	case MSI_X:
		FUNC1(VXGE_TRACE,
			"%s: Interrupt type MSI-X", vdev->ndev->name);
		break;
	}

	if (vdev->config.rth_steering) {
		FUNC1(VXGE_TRACE,
			"%s: RTH steering enabled for TCP_IPV4",
			vdev->ndev->name);
	} else {
		FUNC1(VXGE_TRACE,
			"%s: RTH steering disabled", vdev->ndev->name);
	}

	switch (vdev->config.tx_steering_type) {
	case NO_STEERING:
		FUNC1(VXGE_TRACE,
			"%s: Tx steering disabled", vdev->ndev->name);
		break;
	case TX_PRIORITY_STEERING:
		FUNC1(VXGE_TRACE,
			"%s: Unsupported tx steering option",
			vdev->ndev->name);
		FUNC1(VXGE_TRACE,
			"%s: Tx steering disabled", vdev->ndev->name);
		vdev->config.tx_steering_type = 0;
		break;
	case TX_VLAN_STEERING:
		FUNC1(VXGE_TRACE,
			"%s: Unsupported tx steering option",
			vdev->ndev->name);
		FUNC1(VXGE_TRACE,
			"%s: Tx steering disabled", vdev->ndev->name);
		vdev->config.tx_steering_type = 0;
		break;
	case TX_MULTIQ_STEERING:
		FUNC1(VXGE_TRACE,
			"%s: Tx multiqueue steering enabled",
			vdev->ndev->name);
		break;
	case TX_PORT_STEERING:
		FUNC1(VXGE_TRACE,
			"%s: Tx port steering enabled",
			vdev->ndev->name);
		break;
	default:
		FUNC1(VXGE_ERR,
			"%s: Unsupported tx steering type",
			vdev->ndev->name);
		FUNC1(VXGE_TRACE,
			"%s: Tx steering disabled", vdev->ndev->name);
		vdev->config.tx_steering_type = 0;
	}

	if (vdev->config.addr_learn_en)
		FUNC1(VXGE_TRACE,
			"%s: MAC Address learning enabled", vdev->ndev->name);

	for (i = 0; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++) {
		if (!FUNC0(vpath_mask, i, 1))
			continue;
		FUNC2(VXGE_TRACE,
			"%s: MTU size - %d", vdev->ndev->name,
			((vdev->devh))->
				config.vp_config[i].mtu);
		FUNC1(VXGE_TRACE,
			"%s: VLAN tag stripping %s", vdev->ndev->name,
			((vdev->devh))->
				config.vp_config[i].rpa_strip_vlan_tag
			? "Enabled" : "Disabled");
		FUNC2(VXGE_TRACE,
			"%s: Max frags : %d", vdev->ndev->name,
			((vdev->devh))->
				config.vp_config[i].fifo.max_frags);
		break;
	}
}