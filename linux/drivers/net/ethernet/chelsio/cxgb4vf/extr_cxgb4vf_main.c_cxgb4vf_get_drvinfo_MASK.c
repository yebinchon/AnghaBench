#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct TYPE_5__ {int /*<<< orphan*/  tprev; int /*<<< orphan*/  fwrev; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct adapter {TYPE_3__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 struct adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev,
				struct ethtool_drvinfo *drvinfo)
{
	struct adapter *adapter = FUNC4(dev);

	FUNC7(drvinfo->driver, KBUILD_MODNAME, sizeof(drvinfo->driver));
	FUNC7(drvinfo->version, DRV_VERSION, sizeof(drvinfo->version));
	FUNC7(drvinfo->bus_info, FUNC5(FUNC8(dev->dev.parent)),
		sizeof(drvinfo->bus_info));
	FUNC6(drvinfo->fw_version, sizeof(drvinfo->fw_version),
		 "%u.%u.%u.%u, TP %u.%u.%u.%u",
		 FUNC1(adapter->params.dev.fwrev),
		 FUNC3(adapter->params.dev.fwrev),
		 FUNC2(adapter->params.dev.fwrev),
		 FUNC0(adapter->params.dev.fwrev),
		 FUNC1(adapter->params.dev.tprev),
		 FUNC3(adapter->params.dev.tprev),
		 FUNC2(adapter->params.dev.tprev),
		 FUNC0(adapter->params.dev.tprev));
}