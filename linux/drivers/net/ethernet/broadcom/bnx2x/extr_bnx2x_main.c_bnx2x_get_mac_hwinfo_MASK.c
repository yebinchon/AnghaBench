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
typedef  scalar_t__ u32 ;
struct TYPE_8__ {int /*<<< orphan*/  mac_addr; } ;
struct bnx2x {TYPE_5__* dev; TYPE_3__* pdev; TYPE_2__ link_params; int /*<<< orphan*/  flags; int /*<<< orphan*/  phys_port_id; } ;
struct TYPE_12__ {TYPE_1__* port_hw_config; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  mac_lower; int /*<<< orphan*/  mac_upper; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  mac_lower; int /*<<< orphan*/  mac_upper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC_MF_CFG_LOWERMAC_DEFAULT ; 
 scalar_t__ FUNC_MF_CFG_UPPERMAC_DEFAULT ; 
 int /*<<< orphan*/  HAS_PHYS_PORT_ID ; 
 scalar_t__ FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_6__ dev_info ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_4__* func_mf_config ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct bnx2x *bp)
{
	u32 val, val2;
	int func = FUNC1(bp);
	int port = FUNC3(bp);

	/* Zero primary MAC configuration */
	FUNC12(bp->dev->dev_addr);

	if (FUNC2(bp)) {
		FUNC0("warning: random MAC workaround active\n");
		FUNC11(bp->dev);
	} else if (FUNC5(bp)) {
		val2 = FUNC6(bp, func_mf_config[func].mac_upper);
		val = FUNC6(bp, func_mf_config[func].mac_lower);
		if ((val2 != FUNC_MF_CFG_UPPERMAC_DEFAULT) &&
		    (val != FUNC_MF_CFG_LOWERMAC_DEFAULT))
			FUNC9(bp->dev->dev_addr, val, val2);

		if (FUNC4(bp))
			FUNC8(bp);
	} else {
		/* in SF read MACs from port configuration */
		val2 = FUNC7(bp, dev_info.port_hw_config[port].mac_upper);
		val = FUNC7(bp, dev_info.port_hw_config[port].mac_lower);
		FUNC9(bp->dev->dev_addr, val, val2);

		if (FUNC4(bp))
			FUNC8(bp);
	}

	if (!FUNC2(bp)) {
		/* Read physical port identifier from shmem */
		val2 = FUNC7(bp, dev_info.port_hw_config[port].mac_upper);
		val = FUNC7(bp, dev_info.port_hw_config[port].mac_lower);
		FUNC9(bp->phys_port_id, val, val2);
		bp->flags |= HAS_PHYS_PORT_ID;
	}

	FUNC14(bp->link_params.mac_addr, bp->dev->dev_addr, ETH_ALEN);

	if (!FUNC13(bp->dev->dev_addr))
		FUNC10(&bp->pdev->dev,
			"bad Ethernet MAC address configuration: %pM\n"
			"change it manually before bringing up the appropriate network interface\n",
			bp->dev->dev_addr);
}