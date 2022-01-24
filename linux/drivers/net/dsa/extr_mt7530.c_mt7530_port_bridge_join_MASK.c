#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mt7530_priv {int /*<<< orphan*/  reg_mutex; TYPE_1__* ports; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;
struct TYPE_4__ {struct net_device* bridge_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  pm; scalar_t__ enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MT7530_CPU_PORT ; 
 int MT7530_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCR_MATRIX_MASK ; 
 scalar_t__ FUNC3 (struct dsa_switch*,int) ; 
 TYPE_2__* FUNC4 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct dsa_switch *ds, int port,
			struct net_device *bridge)
{
	struct mt7530_priv *priv = ds->priv;
	u32 port_bitmap = FUNC0(MT7530_CPU_PORT);
	int i;

	FUNC7(&priv->reg_mutex);

	for (i = 0; i < MT7530_NUM_PORTS; i++) {
		/* Add this port to the port matrix of the other ports in the
		 * same bridge. If the port is disabled, port matrix is kept
		 * and not being setup until the port becomes enabled.
		 */
		if (FUNC3(ds, i) && i != port) {
			if (FUNC4(ds, i)->bridge_dev != bridge)
				continue;
			if (priv->ports[i].enable)
				FUNC6(priv, FUNC1(i),
					   FUNC2(FUNC0(port)));
			priv->ports[i].pm |= FUNC2(FUNC0(port));

			port_bitmap |= FUNC0(i);
		}
	}

	/* Add the all other ports to this port matrix. */
	if (priv->ports[port].enable)
		FUNC5(priv, FUNC1(port),
			   PCR_MATRIX_MASK, FUNC2(port_bitmap));
	priv->ports[port].pm |= FUNC2(port_bitmap);

	FUNC8(&priv->reg_mutex);

	return 0;
}