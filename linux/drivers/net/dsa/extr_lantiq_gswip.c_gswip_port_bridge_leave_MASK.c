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
struct net_device {int dummy; } ;
struct gswip_priv {int dummy; } ;
struct dsa_switch {struct gswip_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct gswip_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gswip_priv*,struct net_device*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct dsa_switch *ds, int port,
				    struct net_device *bridge)
{
	struct gswip_priv *priv = ds->priv;

	FUNC1(priv, port, true);

	/* When the bridge uses VLAN filtering we have to configure VLAN
	 * specific bridges. No bridge is configured here.
	 */
	if (!FUNC0(bridge))
		FUNC2(priv, bridge, port, 0, true, false);
}