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
struct net_device {int dummy; } ;
struct emac_instance {int /*<<< orphan*/  tah_dev; int /*<<< orphan*/  rgmii_dev; int /*<<< orphan*/  zmii_dev; int /*<<< orphan*/  mal; } ;
struct emac_ethtool_regs_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_FTR_HAS_RGMII ; 
 int /*<<< orphan*/  EMAC_FTR_HAS_TAH ; 
 int /*<<< orphan*/  EMAC_FTR_HAS_ZMII ; 
 int FUNC0 (struct emac_instance*) ; 
 scalar_t__ FUNC1 (struct emac_instance*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct emac_instance* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev)
{
	struct emac_instance *dev = FUNC3(ndev);
	int size;

	size = sizeof(struct emac_ethtool_regs_hdr) +
		FUNC0(dev) + FUNC2(dev->mal);
	if (FUNC1(dev, EMAC_FTR_HAS_ZMII))
		size += FUNC6(dev->zmii_dev);
	if (FUNC1(dev, EMAC_FTR_HAS_RGMII))
		size += FUNC4(dev->rgmii_dev);
	if (FUNC1(dev, EMAC_FTR_HAS_TAH))
		size += FUNC5(dev->tah_dev);

	return size;
}