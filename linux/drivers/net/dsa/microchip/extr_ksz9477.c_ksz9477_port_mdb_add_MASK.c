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
typedef  int u32 ;
struct switchdev_obj_port_mdb {int* addr; int vid; } ;
struct ksz_device {int num_statics; int /*<<< orphan*/  alu_mutex; int /*<<< orphan*/  dev; } ;
struct dsa_switch {struct ksz_device* priv; } ;

/* Variables and functions */
 int ALU_STAT_INDEX_S ; 
 int ALU_STAT_READ ; 
 int ALU_STAT_START ; 
 int ALU_V_FID_S ; 
 int ALU_V_MAC_ADDR_HI ; 
 int ALU_V_STATIC_VALID ; 
 int ALU_V_USE_FID ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  REG_SW_ALU_STAT_CTRL__4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_device*,int*) ; 
 scalar_t__ FUNC3 (struct ksz_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ksz_device*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ksz_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dsa_switch *ds, int port,
				 const struct switchdev_obj_port_mdb *mdb)
{
	struct ksz_device *dev = ds->priv;
	u32 static_table[4];
	u32 data;
	int index;
	u32 mac_hi, mac_lo;

	mac_hi = ((mdb->addr[0] << 8) | mdb->addr[1]);
	mac_lo = ((mdb->addr[2] << 24) | (mdb->addr[3] << 16));
	mac_lo |= ((mdb->addr[4] << 8) | mdb->addr[5]);

	FUNC6(&dev->alu_mutex);

	for (index = 0; index < dev->num_statics; index++) {
		/* find empty slot first */
		data = (index << ALU_STAT_INDEX_S) |
			ALU_STAT_READ | ALU_STAT_START;
		FUNC5(dev, REG_SW_ALU_STAT_CTRL__4, data);

		/* wait to be finished */
		if (FUNC3(dev)) {
			FUNC1(dev->dev, "Failed to read ALU STATIC\n");
			goto exit;
		}

		/* read ALU static table */
		FUNC2(dev, static_table);

		if (static_table[0] & ALU_V_STATIC_VALID) {
			/* check this has same vid & mac address */
			if (((static_table[2] >> ALU_V_FID_S) == mdb->vid) &&
			    ((static_table[2] & ALU_V_MAC_ADDR_HI) == mac_hi) &&
			    static_table[3] == mac_lo) {
				/* found matching one */
				break;
			}
		} else {
			/* found empty one */
			break;
		}
	}

	/* no available entry */
	if (index == dev->num_statics)
		goto exit;

	/* add entry */
	static_table[0] = ALU_V_STATIC_VALID;
	static_table[1] |= FUNC0(port);
	if (mdb->vid)
		static_table[1] |= ALU_V_USE_FID;
	static_table[2] = (mdb->vid << ALU_V_FID_S);
	static_table[2] |= mac_hi;
	static_table[3] = mac_lo;

	FUNC4(dev, static_table);

	data = (index << ALU_STAT_INDEX_S) | ALU_STAT_START;
	FUNC5(dev, REG_SW_ALU_STAT_CTRL__4, data);

	/* wait to be finished */
	if (FUNC3(dev))
		FUNC1(dev->dev, "Failed to read ALU STATIC\n");

exit:
	FUNC7(&dev->alu_mutex);
}