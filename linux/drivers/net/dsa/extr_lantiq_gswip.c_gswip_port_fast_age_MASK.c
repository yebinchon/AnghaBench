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
struct gswip_priv {int /*<<< orphan*/  dev; } ;
struct gswip_pce_table_entry {int index; int valid; int* val; int /*<<< orphan*/  table; int /*<<< orphan*/  member_0; } ;
struct dsa_switch {struct gswip_priv* priv; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  GSWIP_TABLE_MAC_BRIDGE ; 
 int GSWIP_TABLE_MAC_BRIDGE_STATIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct gswip_priv*,struct gswip_pce_table_entry*) ; 
 int FUNC3 (struct gswip_priv*,struct gswip_pce_table_entry*) ; 

__attribute__((used)) static void FUNC4(struct dsa_switch *ds, int port)
{
	struct gswip_priv *priv = ds->priv;
	struct gswip_pce_table_entry mac_bridge = {0,};
	int i;
	int err;

	for (i = 0; i < 2048; i++) {
		mac_bridge.table = GSWIP_TABLE_MAC_BRIDGE;
		mac_bridge.index = i;

		err = FUNC2(priv, &mac_bridge);
		if (err) {
			FUNC1(priv->dev, "failed to read mac bridge: %d\n",
				err);
			return;
		}

		if (!mac_bridge.valid)
			continue;

		if (mac_bridge.val[1] & GSWIP_TABLE_MAC_BRIDGE_STATIC)
			continue;

		if (((mac_bridge.val[0] & FUNC0(7, 4)) >> 4) != port)
			continue;

		mac_bridge.valid = false;
		err = FUNC3(priv, &mac_bridge);
		if (err) {
			FUNC1(priv->dev, "failed to write mac bridge: %d\n",
				err);
			return;
		}
	}
}