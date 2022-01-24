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
struct vlan_table {int dummy; } ;
struct ksz_device {int /*<<< orphan*/  host_mask; int /*<<< orphan*/ * regmap; int /*<<< orphan*/  vlan_cache; int /*<<< orphan*/  num_vlans; int /*<<< orphan*/  dev; } ;
struct dsa_switch {int /*<<< orphan*/  dev; struct ksz_device* priv; } ;
struct alu_struct {int is_static; int is_override; int /*<<< orphan*/  port_forward; int /*<<< orphan*/  mac; } ;
typedef  int /*<<< orphan*/  alu ;

/* Variables and functions */
 int BROADCAST_STORM_PROT_RATE ; 
 int BROADCAST_STORM_RATE ; 
 int BROADCAST_STORM_VALUE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MULTICAST_STORM_DISABLE ; 
 int NO_EXC_COLLISION_DROP ; 
 int /*<<< orphan*/  REG_SW_CTRL_1 ; 
 int /*<<< orphan*/  REG_SW_CTRL_2 ; 
 int SW_AGGR_BACKOFF ; 
 int /*<<< orphan*/  SW_FLOW_CTRL ; 
 int /*<<< orphan*/  SW_LINK_AUTO_AGING ; 
 int /*<<< orphan*/  SW_MIRROR_RX_TX ; 
 int /*<<< orphan*/  SW_REPLACE_VID ; 
 int /*<<< orphan*/  S_LINK_AGING_CTRL ; 
 int /*<<< orphan*/  S_MIRROR_CTRL ; 
 int /*<<< orphan*/  S_REPLACE_VID_CTRL ; 
 int UNICAST_VLAN_BOUNDARY ; 
 int VLAN_TABLE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eth_stp_addr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC4 (struct ksz_device*,int) ; 
 int FUNC5 (struct ksz_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ksz_device*,int /*<<< orphan*/ ,struct alu_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct ksz_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ksz_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct alu_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC11(struct dsa_switch *ds)
{
	struct ksz_device *dev = ds->priv;
	struct alu_struct alu;
	int i, ret = 0;

	dev->vlan_cache = FUNC1(dev->dev, sizeof(struct vlan_table),
				       dev->num_vlans, GFP_KERNEL);
	if (!dev->vlan_cache)
		return -ENOMEM;

	ret = FUNC5(dev);
	if (ret) {
		FUNC0(ds->dev, "failed to reset switch\n");
		return ret;
	}

	FUNC7(dev, S_REPLACE_VID_CTRL, SW_FLOW_CTRL, true);

	/* Enable automatic fast aging when link changed detected. */
	FUNC7(dev, S_LINK_AGING_CTRL, SW_LINK_AUTO_AGING, true);

	/* Enable aggressive back off algorithm in half duplex mode. */
	FUNC10(dev->regmap[0], REG_SW_CTRL_1,
			   SW_AGGR_BACKOFF, SW_AGGR_BACKOFF);

	/*
	 * Make sure unicast VLAN boundary is set as default and
	 * enable no excessive collision drop.
	 */
	FUNC10(dev->regmap[0], REG_SW_CTRL_2,
			   UNICAST_VLAN_BOUNDARY | NO_EXC_COLLISION_DROP,
			   UNICAST_VLAN_BOUNDARY | NO_EXC_COLLISION_DROP);

	FUNC3(ds);

	FUNC7(dev, REG_SW_CTRL_2, MULTICAST_STORM_DISABLE, true);

	FUNC7(dev, S_REPLACE_VID_CTRL, SW_REPLACE_VID, false);

	FUNC7(dev, S_MIRROR_CTRL, SW_MIRROR_RX_TX, false);

	/* set broadcast storm protection 10% rate */
	FUNC10(dev->regmap[1], S_REPLACE_VID_CTRL,
			   BROADCAST_STORM_RATE,
			   (BROADCAST_STORM_VALUE *
			   BROADCAST_STORM_PROT_RATE) / 100);

	for (i = 0; i < VLAN_TABLE_ENTRIES; i++)
		FUNC4(dev, i);

	/* Setup STP address for STP operation. */
	FUNC9(&alu, 0, sizeof(alu));
	FUNC2(alu.mac, eth_stp_addr);
	alu.is_static = true;
	alu.is_override = true;
	alu.port_forward = dev->host_mask;

	FUNC6(dev, 0, &alu);

	FUNC8(dev);

	return 0;
}