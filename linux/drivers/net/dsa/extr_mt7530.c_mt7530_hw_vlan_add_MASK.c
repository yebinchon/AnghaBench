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
typedef  int u8 ;
typedef  int u32 ;
struct mt7530_priv {int dummy; } ;
struct mt7530_hw_vlan_entry {int old_members; int /*<<< orphan*/  port; scalar_t__ untagged; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int IVL_MAC ; 
 int /*<<< orphan*/  MT7530_CPU_PORT ; 
 int /*<<< orphan*/  MT7530_VAWD1 ; 
 int /*<<< orphan*/  MT7530_VAWD2 ; 
 int MT7530_VLAN_EGRESS_STACK ; 
 int MT7530_VLAN_EGRESS_TAG ; 
 int MT7530_VLAN_EGRESS_UNTAG ; 
 int FUNC3 (int) ; 
 int VLAN_VALID ; 
 int VTAG_EN ; 
 int /*<<< orphan*/  FUNC4 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7530_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct mt7530_priv *priv,
		   struct mt7530_hw_vlan_entry *entry)
{
	u8 new_members;
	u32 val;

	new_members = entry->old_members | FUNC0(entry->port) |
		      FUNC0(MT7530_CPU_PORT);

	/* Validate the entry with independent learning, create egress tag per
	 * VLAN and joining the port as one of the port members.
	 */
	val = IVL_MAC | VTAG_EN | FUNC3(new_members) | VLAN_VALID;
	FUNC5(priv, MT7530_VAWD1, val);

	/* Decide whether adding tag or not for those outgoing packets from the
	 * port inside the VLAN.
	 */
	val = entry->untagged ? MT7530_VLAN_EGRESS_UNTAG :
				MT7530_VLAN_EGRESS_TAG;
	FUNC4(priv, MT7530_VAWD2,
		   FUNC2(entry->port),
		   FUNC1(entry->port, val));

	/* CPU port is always taken as a tagged port for serving more than one
	 * VLANs across and also being applied with egress type stack mode for
	 * that VLAN tags would be appended after hardware special tag used as
	 * DSA tag.
	 */
	FUNC4(priv, MT7530_VAWD2,
		   FUNC2(MT7530_CPU_PORT),
		   FUNC1(MT7530_CPU_PORT,
			       MT7530_VLAN_EGRESS_STACK));
}