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
struct net_device {int dummy; } ;
struct ionic_lif {struct ionic* ionic; } ;
struct TYPE_3__ {int /*<<< orphan*/  fw_version; } ;
struct TYPE_4__ {TYPE_1__ dev_info; } ;
struct ionic {TYPE_2__ idev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  IONIC_DRV_NAME ; 
 int /*<<< orphan*/  IONIC_DRV_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct ionic*) ; 
 struct ionic_lif* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
			      struct ethtool_drvinfo *drvinfo)
{
	struct ionic_lif *lif = FUNC1(netdev);
	struct ionic *ionic = lif->ionic;

	FUNC2(drvinfo->driver, IONIC_DRV_NAME, sizeof(drvinfo->driver));
	FUNC2(drvinfo->version, IONIC_DRV_VERSION, sizeof(drvinfo->version));
	FUNC2(drvinfo->fw_version, ionic->idev.dev_info.fw_version,
		sizeof(drvinfo->fw_version));
	FUNC2(drvinfo->bus_info, FUNC0(ionic),
		sizeof(drvinfo->bus_info));
}