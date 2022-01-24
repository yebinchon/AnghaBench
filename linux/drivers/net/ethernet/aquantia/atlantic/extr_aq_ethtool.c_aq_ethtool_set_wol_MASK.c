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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {int /*<<< orphan*/  wol; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_NIC_WOL_ENABLED ; 
 int WAKE_MAGIC ; 
 struct aq_nic_cfg_s* FUNC0 (struct aq_nic_s*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct aq_nic_s* FUNC2 (struct net_device*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev,
			      struct ethtool_wolinfo *wol)
{
	struct pci_dev *pdev = FUNC3(ndev->dev.parent);
	struct aq_nic_s *aq_nic = FUNC2(ndev);
	struct aq_nic_cfg_s *cfg = FUNC0(aq_nic);
	int err = 0;

	if (wol->wolopts & WAKE_MAGIC)
		cfg->wol |= AQ_NIC_WOL_ENABLED;
	else
		cfg->wol &= ~AQ_NIC_WOL_ENABLED;
	err = FUNC1(&pdev->dev, wol->wolopts);

	return err;
}