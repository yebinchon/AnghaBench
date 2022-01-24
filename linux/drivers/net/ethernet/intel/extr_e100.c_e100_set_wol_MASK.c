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
struct nic {TYPE_1__* pdev; int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  WAKE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e100_configure ; 
 int /*<<< orphan*/  FUNC2 (struct nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nic* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  wol_magic ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
	struct nic *nic = FUNC3(netdev);

	if ((wol->wolopts && wol->wolopts != WAKE_MAGIC) ||
	    !FUNC0(&nic->pdev->dev))
		return -EOPNOTSUPP;

	if (wol->wolopts)
		nic->flags |= wol_magic;
	else
		nic->flags &= ~wol_magic;

	FUNC1(&nic->pdev->dev, wol->wolopts);

	FUNC2(nic, NULL, e100_configure);

	return 0;
}