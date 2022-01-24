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
struct sk_buff {int dummy; } ;
struct sja1105_private {TYPE_2__* ds; } ;
struct sja1105_mgmt_entry {int enfport; int takets; scalar_t__ tsreg; int /*<<< orphan*/  destports; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  member_0; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
struct dsa_switch {TYPE_1__* ports; struct sja1105_private* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BLK_IDX_MGMT_ROUTE ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ethhdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sja1105_private*,int /*<<< orphan*/ ,int,struct sja1105_mgmt_entry*) ; 
 int FUNC8 (struct sja1105_private*,int /*<<< orphan*/ ,int,struct sja1105_mgmt_entry*,int) ; 

__attribute__((used)) static int FUNC9(struct dsa_switch *ds, int port, int slot,
			     struct sk_buff *skb, bool takets)
{
	struct sja1105_mgmt_entry mgmt_route = {0};
	struct sja1105_private *priv = ds->priv;
	struct ethhdr *hdr;
	int timeout = 10;
	int rc;

	hdr = FUNC4(skb);

	mgmt_route.macaddr = FUNC5(hdr->h_dest);
	mgmt_route.destports = FUNC0(port);
	mgmt_route.enfport = 1;
	mgmt_route.tsreg = 0;
	mgmt_route.takets = takets;

	rc = FUNC8(priv, BLK_IDX_MGMT_ROUTE,
					  slot, &mgmt_route, true);
	if (rc < 0) {
		FUNC6(skb);
		return rc;
	}

	/* Transfer skb to the host port. */
	FUNC3(skb, ds->ports[port].slave);

	/* Wait until the switch has processed the frame */
	do {
		rc = FUNC7(priv, BLK_IDX_MGMT_ROUTE,
						 slot, &mgmt_route);
		if (rc < 0) {
			FUNC2(priv->ds->dev,
					    "failed to poll for mgmt route\n");
			continue;
		}

		/* UM10944: The ENFPORT flag of the respective entry is
		 * cleared when a match is found. The host can use this
		 * flag as an acknowledgment.
		 */
		FUNC1();
	} while (mgmt_route.enfport && --timeout);

	if (!timeout) {
		/* Clean up the management route so that a follow-up
		 * frame may not match on it by mistake.
		 * This is only hardware supported on P/Q/R/S - on E/T it is
		 * a no-op and we are silently discarding the -EOPNOTSUPP.
		 */
		FUNC8(priv, BLK_IDX_MGMT_ROUTE,
					     slot, &mgmt_route, false);
		FUNC2(priv->ds->dev, "xmit timed out\n");
	}

	return NETDEV_TX_OK;
}