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
struct ns83820 {int /*<<< orphan*/  pci_dev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct ns83820* FUNC0 (struct net_device*) ; 
 char* VERSION ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev, struct ethtool_drvinfo *info)
{
	struct ns83820 *dev = FUNC0(ndev);
	FUNC2(info->driver, "ns83820", sizeof(info->driver));
	FUNC2(info->version, VERSION, sizeof(info->version));
	FUNC2(info->bus_info, FUNC1(dev->pci_dev), sizeof(info->bus_info));
}