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
struct phy_device {int dummy; } ;
struct mt7530_priv {int /*<<< orphan*/  reg_mutex; TYPE_1__* ports; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;
struct TYPE_2__ {int enable; int /*<<< orphan*/  pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT7530_CPU_PORT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCR_MATRIX_MASK ; 
 int /*<<< orphan*/  FUNC3 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7530_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7530_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct dsa_switch *ds, int port,
		   struct phy_device *phy)
{
	struct mt7530_priv *priv = ds->priv;

	if (!FUNC3(ds, port))
		return 0;

	FUNC6(&priv->reg_mutex);

	/* Allow the user port gets connected to the cpu port and also
	 * restore the port matrix if the port is the member of a certain
	 * bridge.
	 */
	priv->ports[port].pm |= FUNC2(FUNC0(MT7530_CPU_PORT));
	priv->ports[port].enable = true;
	FUNC5(priv, FUNC1(port), PCR_MATRIX_MASK,
		   priv->ports[port].pm);
	FUNC4(priv, port, 0);

	FUNC7(&priv->reg_mutex);

	return 0;
}