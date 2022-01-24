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
struct vsc73xx {int /*<<< orphan*/  dev; } ;
struct dsa_switch {struct vsc73xx* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vsc73xx*) ; 
 int /*<<< orphan*/  VSC73XX_BLOCK_ANALYZER ; 
 int /*<<< orphan*/  VSC73XX_BLOCK_MAC ; 
 int /*<<< orphan*/  VSC73XX_BLOCK_MEMINIT ; 
 int /*<<< orphan*/  VSC73XX_BLOCK_SYSTEM ; 
 int /*<<< orphan*/  VSC73XX_GLORESET ; 
 int VSC73XX_GLORESET_MASTER_RESET ; 
 int VSC73XX_GLORESET_PHY_RESET ; 
 int /*<<< orphan*/  VSC73XX_GMIIDELAY ; 
 int VSC73XX_GMIIDELAY_GMII0_GTXDELAY_2_0_NS ; 
 int VSC73XX_GMIIDELAY_GMII0_RXDELAY_2_0_NS ; 
 int /*<<< orphan*/  VSC73XX_IFLODMSK ; 
 int /*<<< orphan*/  VSC73XX_MACACCESS ; 
 int VSC73XX_MACACCESS_CMD_CLEAR_TABLE ; 
 int /*<<< orphan*/  VSC73XX_MAC_CFG ; 
 int VSC73XX_MAC_CFG_RESET ; 
 int /*<<< orphan*/  VSC73XX_Q_MISC_CONF ; 
 int VSC73XX_Q_MISC_CONF_EXTENT_MEM ; 
 int /*<<< orphan*/  VSC73XX_RECVMASK ; 
 int /*<<< orphan*/  VSC73XX_VLANACCESS ; 
 int VSC73XX_VLANACCESS_VLAN_TBL_CMD_CLEAR_TABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vsc73xx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct dsa_switch *ds)
{
	struct vsc73xx *vsc = ds->priv;
	int i;

	FUNC1(vsc->dev, "set up the switch\n");

	/* Issue RESET */
	FUNC6(vsc, VSC73XX_BLOCK_SYSTEM, 0, VSC73XX_GLORESET,
		      VSC73XX_GLORESET_MASTER_RESET);
	FUNC5(125, 200);

	/* Initialize memory, initialize RAM bank 0..15 except 6 and 7
	 * This sequence appears in the
	 * VSC7385 SparX-G5 datasheet section 6.6.1
	 * VSC7395 SparX-G5e datasheet section 6.6.1
	 * "initialization sequence".
	 * No explanation is given to the 0x1010400 magic number.
	 */
	for (i = 0; i <= 15; i++) {
		if (i != 6 && i != 7) {
			FUNC6(vsc, VSC73XX_BLOCK_MEMINIT,
				      2,
				      0, 0x1010400 + i);
			FUNC2(1);
		}
	}
	FUNC2(30);

	/* Clear MAC table */
	FUNC6(vsc, VSC73XX_BLOCK_ANALYZER, 0,
		      VSC73XX_MACACCESS,
		      VSC73XX_MACACCESS_CMD_CLEAR_TABLE);

	/* Clear VLAN table */
	FUNC6(vsc, VSC73XX_BLOCK_ANALYZER, 0,
		      VSC73XX_VLANACCESS,
		      VSC73XX_VLANACCESS_VLAN_TBL_CMD_CLEAR_TABLE);

	FUNC3(40);

	/* Use 20KiB buffers on all ports on VSC7395
	 * The VSC7385 has 16KiB buffers and that is the
	 * default if we don't set this up explicitly.
	 * Port "31" is "all ports".
	 */
	if (FUNC0(vsc))
		FUNC6(vsc, VSC73XX_BLOCK_MAC, 0x1f,
			      VSC73XX_Q_MISC_CONF,
			      VSC73XX_Q_MISC_CONF_EXTENT_MEM);

	/* Put all ports into reset until enabled */
	for (i = 0; i < 7; i++) {
		if (i == 5)
			continue;
		FUNC6(vsc, VSC73XX_BLOCK_MAC, 4,
			      VSC73XX_MAC_CFG, VSC73XX_MAC_CFG_RESET);
	}

	/* MII delay, set both GTX and RX delay to 2 ns */
	FUNC6(vsc, VSC73XX_BLOCK_SYSTEM, 0, VSC73XX_GMIIDELAY,
		      VSC73XX_GMIIDELAY_GMII0_GTXDELAY_2_0_NS |
		      VSC73XX_GMIIDELAY_GMII0_RXDELAY_2_0_NS);
	/* Enable reception of frames on all ports */
	FUNC6(vsc, VSC73XX_BLOCK_ANALYZER, 0, VSC73XX_RECVMASK,
		      0x5f);
	/* IP multicast flood mask (table 144) */
	FUNC6(vsc, VSC73XX_BLOCK_ANALYZER, 0, VSC73XX_IFLODMSK,
		      0xff);

	FUNC2(50);

	/* Release reset from the internal PHYs */
	FUNC6(vsc, VSC73XX_BLOCK_SYSTEM, 0, VSC73XX_GLORESET,
		      VSC73XX_GLORESET_PHY_RESET);

	FUNC4(4);

	return 0;
}