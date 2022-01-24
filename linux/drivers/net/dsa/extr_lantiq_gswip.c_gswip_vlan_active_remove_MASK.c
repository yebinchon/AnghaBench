#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gswip_priv {TYPE_1__* vlans; int /*<<< orphan*/  dev; } ;
struct gswip_pce_table_entry {int index; int valid; int /*<<< orphan*/  table; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bridge; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSWIP_TABLE_ACTIVE_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct gswip_priv*,struct gswip_pce_table_entry*) ; 

__attribute__((used)) static int FUNC2(struct gswip_priv *priv, int idx)
{
	struct gswip_pce_table_entry vlan_active = {0,};
	int err;

	vlan_active.index = idx;
	vlan_active.table = GSWIP_TABLE_ACTIVE_VLAN;
	vlan_active.valid = false;
	err = FUNC1(priv, &vlan_active);
	if (err)
		FUNC0(priv->dev, "failed to delete active VLAN: %d\n", err);
	priv->vlans[idx].bridge = NULL;

	return err;
}