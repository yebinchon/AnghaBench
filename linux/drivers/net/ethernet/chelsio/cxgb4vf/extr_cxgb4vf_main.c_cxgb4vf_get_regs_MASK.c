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
struct net_device {int dummy; } ;
struct ethtool_regs {int /*<<< orphan*/  version; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ PL_VF_REVISION_A ; 
 scalar_t__ PL_VF_WHOAMI_A ; 
 scalar_t__ T4VF_CIM_BASE_ADDR ; 
 scalar_t__ T4VF_MBDATA_BASE_ADDR ; 
 scalar_t__ T4VF_MBDATA_FIRST ; 
 scalar_t__ T4VF_MBDATA_LAST ; 
 scalar_t__ T4VF_MOD_MAP_CIM_FIRST ; 
 scalar_t__ T4VF_MOD_MAP_CIM_LAST ; 
 scalar_t__ T4VF_MOD_MAP_MPS_FIRST ; 
 scalar_t__ T4VF_MOD_MAP_MPS_LAST ; 
 scalar_t__ T4VF_MOD_MAP_PL_FIRST ; 
 scalar_t__ T4VF_MOD_MAP_SGE_FIRST ; 
 scalar_t__ T4VF_MOD_MAP_SGE_LAST ; 
 scalar_t__ T4VF_MPS_BASE_ADDR ; 
 scalar_t__ T4VF_PL_BASE_ADDR ; 
 int /*<<< orphan*/  T4VF_REGMAP_SIZE ; 
 scalar_t__ T4VF_SGE_BASE_ADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 struct adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,void*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev,
			     struct ethtool_regs *regs,
			     void *regbuf)
{
	struct adapter *adapter = FUNC3(dev);

	regs->version = FUNC2(adapter);

	/*
	 * Fill in register buffer with our register map.
	 */
	FUNC1(regbuf, 0, T4VF_REGMAP_SIZE);

	FUNC4(adapter, regbuf,
		       T4VF_SGE_BASE_ADDR + T4VF_MOD_MAP_SGE_FIRST,
		       T4VF_SGE_BASE_ADDR + T4VF_MOD_MAP_SGE_LAST);
	FUNC4(adapter, regbuf,
		       T4VF_MPS_BASE_ADDR + T4VF_MOD_MAP_MPS_FIRST,
		       T4VF_MPS_BASE_ADDR + T4VF_MOD_MAP_MPS_LAST);

	/* T5 adds new registers in the PL Register map.
	 */
	FUNC4(adapter, regbuf,
		       T4VF_PL_BASE_ADDR + T4VF_MOD_MAP_PL_FIRST,
		       T4VF_PL_BASE_ADDR + (FUNC0(adapter->params.chip)
		       ? PL_VF_WHOAMI_A : PL_VF_REVISION_A));
	FUNC4(adapter, regbuf,
		       T4VF_CIM_BASE_ADDR + T4VF_MOD_MAP_CIM_FIRST,
		       T4VF_CIM_BASE_ADDR + T4VF_MOD_MAP_CIM_LAST);

	FUNC4(adapter, regbuf,
		       T4VF_MBDATA_BASE_ADDR + T4VF_MBDATA_FIRST,
		       T4VF_MBDATA_BASE_ADDR + T4VF_MBDATA_LAST);
}