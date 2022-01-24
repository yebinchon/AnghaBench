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
struct mt7530_priv {int /*<<< orphan*/  ds; } ;
struct dsa_switch {int /*<<< orphan*/ * ports; struct mt7530_priv* priv; } ;

/* Variables and functions */
 int MT7530_CPU_PORT ; 
 int MT7530_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MT7530_PORT_MATRIX_MODE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MT7530_VLAN_TRANSPARENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCR_PORT_VLAN_MASK ; 
 int /*<<< orphan*/  PORT_SPEC_TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLAN_ATTR_MASK ; 
 scalar_t__ FUNC4 (struct dsa_switch*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct dsa_switch *ds, int port)
{
	struct mt7530_priv *priv = ds->priv;
	bool all_user_ports_removed = true;
	int i;

	/* When a port is removed from the bridge, the port would be set up
	 * back to the default as is at initial boot which is a VLAN-unaware
	 * port.
	 */
	FUNC7(priv, FUNC0(port), PCR_PORT_VLAN_MASK,
		   MT7530_PORT_MATRIX_MODE);
	FUNC7(priv, FUNC1(port), VLAN_ATTR_MASK,
		   FUNC3(MT7530_VLAN_TRANSPARENT));

	for (i = 0; i < MT7530_NUM_PORTS; i++) {
		if (FUNC4(ds, i) &&
		    FUNC5(&ds->ports[i])) {
			all_user_ports_removed = false;
			break;
		}
	}

	/* CPU port also does the same thing until all user ports belonging to
	 * the CPU port get out of VLAN filtering mode.
	 */
	if (all_user_ports_removed) {
		FUNC8(priv, FUNC0(MT7530_CPU_PORT),
			     FUNC2(FUNC6(priv->ds)));
		FUNC8(priv, FUNC1(MT7530_CPU_PORT),
			     PORT_SPEC_TAG);
	}
}