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
struct mt7530_priv {int /*<<< orphan*/  reg_mutex; TYPE_1__* ports; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;
struct TYPE_2__ {int enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCR_MATRIX_CLR ; 
 int /*<<< orphan*/  PCR_MATRIX_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7530_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct dsa_switch *ds, int port)
{
	struct mt7530_priv *priv = ds->priv;

	if (!FUNC1(ds, port))
		return;

	FUNC4(&priv->reg_mutex);

	/* Clear up all port matrix which could be restored in the next
	 * enablement for the port.
	 */
	priv->ports[port].enable = false;
	FUNC3(priv, FUNC0(port), PCR_MATRIX_MASK,
		   PCR_MATRIX_CLR);
	FUNC2(priv, port, 0);

	FUNC5(&priv->reg_mutex);
}