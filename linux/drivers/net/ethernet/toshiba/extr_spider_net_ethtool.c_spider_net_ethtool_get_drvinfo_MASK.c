#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct spider_net_card {int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 char* VERSION ; 
 struct spider_net_card* FUNC0 (struct net_device*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* spider_net_driver_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct net_device *netdev,
			       struct ethtool_drvinfo *drvinfo)
{
	struct spider_net_card *card;
	card = FUNC0(netdev);

	/* clear and fill out info */
	FUNC2(drvinfo->driver, spider_net_driver_name,
		sizeof(drvinfo->driver));
	FUNC2(drvinfo->version, VERSION, sizeof(drvinfo->version));
	FUNC2(drvinfo->fw_version, "no information",
		sizeof(drvinfo->fw_version));
	FUNC2(drvinfo->bus_info, FUNC1(card->pdev),
		sizeof(drvinfo->bus_info));
}