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
struct gbe_priv {int num_slaves; int /*<<< orphan*/  dev; int /*<<< orphan*/  ale_ports; struct cpsw_ale* ale; } ;
struct gbe_intf {struct gbe_priv* gbe_dev; } ;
struct cpsw_ale {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_AGEOUT ; 
 int /*<<< orphan*/  ALE_P0_UNI_FLOOD ; 
 int /*<<< orphan*/  ALE_PORT_NOLEARN ; 
 int /*<<< orphan*/  ALE_PORT_NO_SA_UPDATE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long HZ ; 
 scalar_t__ FUNC1 (struct cpsw_ale*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_ale*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpsw_ale*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(void *intf_priv, bool promisc)
{
	struct gbe_intf *gbe_intf = intf_priv;
	struct gbe_priv *gbe_dev = gbe_intf->gbe_dev;
	struct cpsw_ale *ale = gbe_dev->ale;
	unsigned long timeout;
	int i, ret = -ETIMEDOUT;

	/* Disable(1)/Enable(0) Learn for all ports (host is port 0 and
	 * slaves are port 1 and up
	 */
	for (i = 0; i <= gbe_dev->num_slaves; i++) {
		FUNC2(ale, i,
				     ALE_PORT_NOLEARN, !!promisc);
		FUNC2(ale, i,
				     ALE_PORT_NO_SA_UPDATE, !!promisc);
	}

	if (!promisc) {
		/* Don't Flood All Unicast Packets to Host port */
		FUNC2(ale, 0, ALE_P0_UNI_FLOOD, 0);
		FUNC5(gbe_dev->dev, "promiscuous mode disabled\n");
		return 0;
	}

	timeout = jiffies + HZ;

	/* Clear All Untouched entries */
	FUNC2(ale, 0, ALE_AGEOUT, 1);
	do {
		FUNC4();
		if (FUNC1(ale, 0, ALE_AGEOUT)) {
			ret = 0;
			break;
		}

	} while (FUNC6(timeout, jiffies));

	/* Make sure it is not a false timeout */
	if (ret && !FUNC1(ale, 0, ALE_AGEOUT))
		return ret;

	FUNC2(ale, 0, ALE_AGEOUT, 1);

	/* Clear all mcast from ALE */
	FUNC3(ale,
				 FUNC0(gbe_dev->ale_ports),
				 -1);

	/* Flood All Unicast Packets to Host port */
	FUNC2(ale, 0, ALE_P0_UNI_FLOOD, 1);
	FUNC5(gbe_dev->dev, "promiscuous mode enabled\n");
	return ret;
}