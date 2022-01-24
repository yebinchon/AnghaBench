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
struct qca8k_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_switch {scalar_t__ priv; } ;
struct TYPE_2__ {struct net_device* bridge_dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int QCA8K_CPU_PORT ; 
 int QCA8K_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  QCA8K_PORT_LOOKUP_MEMBER ; 
 TYPE_1__* FUNC2 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qca8k_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qca8k_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct dsa_switch *ds, int port, struct net_device *br)
{
	struct qca8k_priv *priv = (struct qca8k_priv *)ds->priv;
	int port_mask = FUNC0(QCA8K_CPU_PORT);
	int i;

	for (i = 1; i < QCA8K_NUM_PORTS; i++) {
		if (FUNC2(ds, i)->bridge_dev != br)
			continue;
		/* Add this port to the portvlan mask of the other ports
		 * in the bridge
		 */
		FUNC3(priv,
			      FUNC1(i),
			      FUNC0(port));
		if (i != port)
			port_mask |= FUNC0(i);
	}
	/* Add all other ports to this ports portvlan mask */
	FUNC4(priv, FUNC1(port),
		  QCA8K_PORT_LOOKUP_MEMBER, port_mask);

	return 0;
}