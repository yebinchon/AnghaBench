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
struct gbe_priv {scalar_t__ ale_ports; int /*<<< orphan*/  ale; int /*<<< orphan*/  host_port; scalar_t__ enable_ale; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_BYPASS ; 
 int /*<<< orphan*/  ALE_NO_PORT_VLAN ; 
 int /*<<< orphan*/  ALE_PORT_STATE ; 
 int ALE_PORT_STATE_FORWARD ; 
 int /*<<< orphan*/  ALE_PORT_UNKNOWN_MCAST_FLOOD ; 
 int /*<<< orphan*/  ALE_PORT_UNKNOWN_REG_MCAST_FLOOD ; 
 int /*<<< orphan*/  ALE_PORT_UNKNOWN_VLAN_MEMBER ; 
 int /*<<< orphan*/  ALE_PORT_UNTAGGED_EGRESS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct gbe_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOST_TX_PRI_MAP_DEFAULT ; 
 scalar_t__ FUNC2 (struct gbe_priv*) ; 
 scalar_t__ FUNC3 (struct gbe_priv*) ; 
 int /*<<< orphan*/  NETCP_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  host_port_regs ; 
 int /*<<< orphan*/  rx_maxlen ; 
 int /*<<< orphan*/  tx_pri_map ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct gbe_priv *priv)
{
	int bypass_en = 1;

	/* Host Tx Pri */
	if (FUNC2(priv) || FUNC3(priv))
		FUNC6(HOST_TX_PRI_MAP_DEFAULT,
		       FUNC1(priv, host_port_regs, tx_pri_map));

	/* Max length register */
	FUNC6(NETCP_MAX_FRAME_SIZE, FUNC1(priv, host_port_regs,
						  rx_maxlen));

	FUNC5(priv->ale);

	if (priv->enable_ale)
		bypass_en = 0;

	FUNC4(priv->ale, 0, ALE_BYPASS, bypass_en);

	FUNC4(priv->ale, 0, ALE_NO_PORT_VLAN, 1);

	FUNC4(priv->ale, priv->host_port,
			     ALE_PORT_STATE, ALE_PORT_STATE_FORWARD);

	FUNC4(priv->ale, 0,
			     ALE_PORT_UNKNOWN_VLAN_MEMBER,
			     FUNC0(priv->ale_ports));

	FUNC4(priv->ale, 0,
			     ALE_PORT_UNKNOWN_MCAST_FLOOD,
			     FUNC0(priv->ale_ports - 1));

	FUNC4(priv->ale, 0,
			     ALE_PORT_UNKNOWN_REG_MCAST_FLOOD,
			     FUNC0(priv->ale_ports));

	FUNC4(priv->ale, 0,
			     ALE_PORT_UNTAGGED_EGRESS,
			     FUNC0(priv->ale_ports));
}