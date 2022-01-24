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
typedef  int /*<<< orphan*/  u16 ;
struct sja1105_private {int dummy; } ;
struct sja1105_l2_lookup_entry {int mask_iotag; int destports; int lockeds; int index; scalar_t__ mask_vlanid; int /*<<< orphan*/  mask_macaddr; int /*<<< orphan*/  iotag; int /*<<< orphan*/  vlanid; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  member_0; } ;
struct dsa_switch {int /*<<< orphan*/  dev; int /*<<< orphan*/ * ports; struct sja1105_private* priv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BLK_IDX_L2_LOOKUP ; 
 int EINVAL ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int SJA1105_MAX_L2_LOOKUP_COUNT ; 
 int SJA1105_SEARCH ; 
 int /*<<< orphan*/  SJA1105_S_TAG ; 
 scalar_t__ VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*) ; 
 int FUNC5 (struct sja1105_private*,int /*<<< orphan*/ ,int,struct sja1105_l2_lookup_entry*) ; 
 int FUNC6 (struct sja1105_private*,int /*<<< orphan*/ ,int,struct sja1105_l2_lookup_entry*,int) ; 
 int FUNC7 (struct sja1105_private*,int,struct sja1105_l2_lookup_entry*,int) ; 

int FUNC8(struct dsa_switch *ds, int port,
			const unsigned char *addr, u16 vid)
{
	struct sja1105_l2_lookup_entry l2_lookup = {0};
	struct sja1105_private *priv = ds->priv;
	int rc, i;

	/* Search for an existing entry in the FDB table */
	l2_lookup.macaddr = FUNC4(addr);
	l2_lookup.vlanid = vid;
	l2_lookup.iotag = SJA1105_S_TAG;
	l2_lookup.mask_macaddr = FUNC1(ETH_ALEN * 8 - 1, 0);
	if (FUNC3(&ds->ports[port])) {
		l2_lookup.mask_vlanid = VLAN_VID_MASK;
		l2_lookup.mask_iotag = FUNC0(0);
	} else {
		l2_lookup.mask_vlanid = 0;
		l2_lookup.mask_iotag = 0;
	}
	l2_lookup.destports = FUNC0(port);

	rc = FUNC5(priv, BLK_IDX_L2_LOOKUP,
					 SJA1105_SEARCH, &l2_lookup);
	if (rc == 0) {
		/* Found and this port is already in the entry's
		 * port mask => job done
		 */
		if (l2_lookup.destports & FUNC0(port))
			return 0;
		/* l2_lookup.index is populated by the switch in case it
		 * found something.
		 */
		l2_lookup.destports |= FUNC0(port);
		goto skip_finding_an_index;
	}

	/* Not found, so try to find an unused spot in the FDB.
	 * This is slightly inefficient because the strategy is knock-knock at
	 * every possible position from 0 to 1023.
	 */
	for (i = 0; i < SJA1105_MAX_L2_LOOKUP_COUNT; i++) {
		rc = FUNC5(priv, BLK_IDX_L2_LOOKUP,
						 i, NULL);
		if (rc < 0)
			break;
	}
	if (i == SJA1105_MAX_L2_LOOKUP_COUNT) {
		FUNC2(ds->dev, "FDB is full, cannot add entry.\n");
		return -EINVAL;
	}
	l2_lookup.lockeds = true;
	l2_lookup.index = i;

skip_finding_an_index:
	rc = FUNC6(priv, BLK_IDX_L2_LOOKUP,
					  l2_lookup.index, &l2_lookup,
					  true);
	if (rc < 0)
		return rc;

	return FUNC7(priv, port, &l2_lookup, true);
}