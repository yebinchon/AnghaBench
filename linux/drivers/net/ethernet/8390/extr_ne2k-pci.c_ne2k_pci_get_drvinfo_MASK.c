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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct ei_device {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 struct ei_device* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				 struct ethtool_drvinfo *info)
{
	struct ei_device *ei = FUNC0(dev);
	struct pci_dev *pci_dev = (struct pci_dev *) ei->priv;

	FUNC2(info->driver, DRV_NAME, sizeof(info->driver));
	FUNC2(info->version, DRV_VERSION, sizeof(info->version));
	FUNC2(info->bus_info, FUNC1(pci_dev), sizeof(info->bus_info));
}