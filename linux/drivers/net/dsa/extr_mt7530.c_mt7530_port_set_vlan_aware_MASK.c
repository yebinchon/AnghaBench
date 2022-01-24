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
struct mt7530_priv {int dummy; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7530_ALL_MEMBERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MT7530_PORT_SECURITY_MODE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MT7530_VLAN_USER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCR_MATRIX_MASK ; 
 int /*<<< orphan*/  PCR_PORT_VLAN_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLAN_ATTR_MASK ; 
 int /*<<< orphan*/  FUNC4 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct dsa_switch *ds, int port)
{
	struct mt7530_priv *priv = ds->priv;

	/* The real fabric path would be decided on the membership in the
	 * entry of VLAN table. PCR_MATRIX set up here with ALL_MEMBERS
	 * means potential VLAN can be consisting of certain subset of all
	 * ports.
	 */
	FUNC4(priv, FUNC0(port),
		   PCR_MATRIX_MASK, FUNC2(MT7530_ALL_MEMBERS));

	/* Trapped into security mode allows packet forwarding through VLAN
	 * table lookup.
	 */
	FUNC4(priv, FUNC0(port), PCR_PORT_VLAN_MASK,
		   MT7530_PORT_SECURITY_MODE);

	/* Set the port as a user port which is to be able to recognize VID
	 * from incoming packets before fetching entry within the VLAN table.
	 */
	FUNC4(priv, FUNC1(port), VLAN_ATTR_MASK,
		   FUNC3(MT7530_VLAN_USER));
}