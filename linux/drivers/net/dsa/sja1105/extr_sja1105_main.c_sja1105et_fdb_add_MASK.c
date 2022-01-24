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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sja1105_private {int dummy; } ;
struct sja1105_l2_lookup_entry {int destports; int index; int /*<<< orphan*/  vlanid; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  member_0; } ;
struct dsa_switch {struct device* dev; struct sja1105_private* priv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BLK_IDX_L2_LOOKUP ; 
 int SJA1105ET_FDB_BIN_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int FUNC4 (struct sja1105_private*,int /*<<< orphan*/ ,int,struct sja1105_l2_lookup_entry*,int) ; 
 int FUNC5 (struct sja1105_private*,int,struct sja1105_l2_lookup_entry*,int) ; 
 int FUNC6 (struct sja1105_private*,unsigned char const*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int) ; 
 int FUNC8 (struct sja1105_private*,int,unsigned char const*,int /*<<< orphan*/ ,struct sja1105_l2_lookup_entry*,int*) ; 

int FUNC9(struct dsa_switch *ds, int port,
		      const unsigned char *addr, u16 vid)
{
	struct sja1105_l2_lookup_entry l2_lookup = {0};
	struct sja1105_private *priv = ds->priv;
	struct device *dev = ds->dev;
	int last_unused = -1;
	int bin, way, rc;

	bin = FUNC6(priv, addr, vid);

	way = FUNC8(priv, bin, addr, vid,
					    &l2_lookup, &last_unused);
	if (way >= 0) {
		/* We have an FDB entry. Is our port in the destination
		 * mask? If yes, we need to do nothing. If not, we need
		 * to rewrite the entry by adding this port to it.
		 */
		if (l2_lookup.destports & FUNC0(port))
			return 0;
		l2_lookup.destports |= FUNC0(port);
	} else {
		int index = FUNC7(bin, way);

		/* We don't have an FDB entry. We construct a new one and
		 * try to find a place for it within the FDB table.
		 */
		l2_lookup.macaddr = FUNC2(addr);
		l2_lookup.destports = FUNC0(port);
		l2_lookup.vlanid = vid;

		if (last_unused >= 0) {
			way = last_unused;
		} else {
			/* Bin is full, need to evict somebody.
			 * Choose victim at random. If you get these messages
			 * often, you may need to consider changing the
			 * distribution function:
			 * static_config[BLK_IDX_L2_LOOKUP_PARAMS].entries->poly
			 */
			FUNC3(&way, sizeof(u8));
			way %= SJA1105ET_FDB_BIN_SIZE;
			FUNC1(dev, "Warning, FDB bin %d full while adding entry for %pM. Evicting entry %u.\n",
				 bin, addr, way);
			/* Evict entry */
			FUNC4(priv, BLK_IDX_L2_LOOKUP,
						     index, NULL, false);
		}
	}
	l2_lookup.index = FUNC7(bin, way);

	rc = FUNC4(priv, BLK_IDX_L2_LOOKUP,
					  l2_lookup.index, &l2_lookup,
					  true);
	if (rc < 0)
		return rc;

	return FUNC5(priv, port, &l2_lookup, true);
}