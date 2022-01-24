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
struct net_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mc; } ;
struct TYPE_6__ {int slaves; scalar_t__ dual_emac; } ;
struct cpsw_common {TYPE_3__ data; TYPE_2__* slaves; struct cpsw_ale* ale; } ;
struct cpsw_ale {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ndev; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_AGEOUT ; 
 int /*<<< orphan*/  ALE_ALL_PORTS ; 
 int /*<<< orphan*/  ALE_BYPASS ; 
 int /*<<< orphan*/  ALE_P0_UNI_FLOOD ; 
 int /*<<< orphan*/  ALE_PORT_NOLEARN ; 
 int /*<<< orphan*/  ALE_PORT_NO_SA_UPDATE ; 
 unsigned long HZ ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cpsw_ale*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_ale*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpsw_ale*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 struct cpsw_common* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct net_device *ndev, bool enable)
{
	struct cpsw_common *cpsw = FUNC7(ndev);
	struct cpsw_ale *ale = cpsw->ale;
	int i;

	if (cpsw->data.dual_emac) {
		bool flag = false;

		/* Enabling promiscuous mode for one interface will be
		 * common for both the interface as the interface shares
		 * the same hardware resource.
		 */
		for (i = 0; i < cpsw->data.slaves; i++)
			if (cpsw->slaves[i].ndev->flags & IFF_PROMISC)
				flag = true;

		if (!enable && flag) {
			enable = true;
			FUNC6(&ndev->dev, "promiscuity not disabled as the other interface is still in promiscuity mode\n");
		}

		if (enable) {
			/* Enable Bypass */
			FUNC2(ale, 0, ALE_BYPASS, 1);

			FUNC5(&ndev->dev, "promiscuity enabled\n");
		} else {
			/* Disable Bypass */
			FUNC2(ale, 0, ALE_BYPASS, 0);
			FUNC5(&ndev->dev, "promiscuity disabled\n");
		}
	} else {
		if (enable) {
			unsigned long timeout = jiffies + HZ;

			/* Disable Learn for all ports (host is port 0 and slaves are port 1 and up */
			for (i = 0; i <= cpsw->data.slaves; i++) {
				FUNC2(ale, i,
						     ALE_PORT_NOLEARN, 1);
				FUNC2(ale, i,
						     ALE_PORT_NO_SA_UPDATE, 1);
			}

			/* Clear All Untouched entries */
			FUNC2(ale, 0, ALE_AGEOUT, 1);
			do {
				FUNC4();
				if (FUNC1(ale, 0, ALE_AGEOUT))
					break;
			} while (FUNC8(timeout, jiffies));
			FUNC2(ale, 0, ALE_AGEOUT, 1);

			/* Clear all mcast from ALE */
			FUNC3(ale, ALE_ALL_PORTS, -1);
			FUNC0(&ndev->mc, ndev, NULL);

			/* Flood All Unicast Packets to Host port */
			FUNC2(ale, 0, ALE_P0_UNI_FLOOD, 1);
			FUNC5(&ndev->dev, "promiscuity enabled\n");
		} else {
			/* Don't Flood All Unicast Packets to Host port */
			FUNC2(ale, 0, ALE_P0_UNI_FLOOD, 0);

			/* Enable Learn for all ports (host is port 0 and slaves are port 1 and up */
			for (i = 0; i <= cpsw->data.slaves; i++) {
				FUNC2(ale, i,
						     ALE_PORT_NOLEARN, 0);
				FUNC2(ale, i,
						     ALE_PORT_NO_SA_UPDATE, 0);
			}
			FUNC5(&ndev->dev, "promiscuity disabled\n");
		}
	}
}