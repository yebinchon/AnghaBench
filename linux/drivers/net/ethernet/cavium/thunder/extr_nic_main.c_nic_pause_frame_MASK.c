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
struct TYPE_2__ {int /*<<< orphan*/  fc_tx; int /*<<< orphan*/  fc_rx; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  msg; } ;
union nic_mbx {TYPE_1__ pfc; } ;
struct pfc {int /*<<< orphan*/  fc_tx; int /*<<< orphan*/  fc_rx; int /*<<< orphan*/  autoneg; scalar_t__ get; } ;
struct nicpf {int num_vf_en; int /*<<< orphan*/  node; int /*<<< orphan*/ * vf_lmac_map; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIC_MBOX_MSG_PFC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,struct pfc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,struct pfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct nicpf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nicpf*,int,union nic_mbx*) ; 

__attribute__((used)) static void FUNC6(struct nicpf *nic, int vf, struct pfc *cfg)
{
	int bgx, lmac;
	struct pfc pfc;
	union nic_mbx mbx = {};

	if (vf >= nic->num_vf_en)
		return;
	bgx = FUNC0(nic->vf_lmac_map[vf]);
	lmac = FUNC1(nic->vf_lmac_map[vf]);

	if (cfg->get) {
		FUNC2(nic->node, bgx, lmac, &pfc);
		mbx.pfc.msg = NIC_MBOX_MSG_PFC;
		mbx.pfc.autoneg = pfc.autoneg;
		mbx.pfc.fc_rx = pfc.fc_rx;
		mbx.pfc.fc_tx = pfc.fc_tx;
		FUNC5(nic, vf, &mbx);
	} else {
		FUNC3(nic->node, bgx, lmac, cfg);
		FUNC4(nic, vf);
	}
}