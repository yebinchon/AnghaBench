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
typedef  int u32 ;
struct qca8k_priv {int /*<<< orphan*/  dev; } ;
struct phy_device {int speed; scalar_t__ duplex; } ;
struct dsa_switch {struct qca8k_priv* priv; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int QCA8K_PORT_STATUS_DUPLEX ; 
 int QCA8K_PORT_STATUS_RXFLOW ; 
 int QCA8K_PORT_STATUS_SPEED_10 ; 
 int QCA8K_PORT_STATUS_SPEED_100 ; 
 int QCA8K_PORT_STATUS_SPEED_1000 ; 
 int QCA8K_PORT_STATUS_TXFLOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC2 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct qca8k_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qca8k_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct dsa_switch *ds, int port, struct phy_device *phy)
{
	struct qca8k_priv *priv = ds->priv;
	u32 reg;

	/* Force fixed-link setting for CPU port, skip others. */
	if (!FUNC3(phy))
		return;

	/* Set port speed */
	switch (phy->speed) {
	case 10:
		reg = QCA8K_PORT_STATUS_SPEED_10;
		break;
	case 100:
		reg = QCA8K_PORT_STATUS_SPEED_100;
		break;
	case 1000:
		reg = QCA8K_PORT_STATUS_SPEED_1000;
		break;
	default:
		FUNC1(priv->dev, "port%d link speed %dMbps not supported.\n",
			port, phy->speed);
		return;
	}

	/* Set duplex mode */
	if (phy->duplex == DUPLEX_FULL)
		reg |= QCA8K_PORT_STATUS_DUPLEX;

	/* Force flow control */
	if (FUNC2(ds, port))
		reg |= QCA8K_PORT_STATUS_RXFLOW | QCA8K_PORT_STATUS_TXFLOW;

	/* Force link down before changing MAC options */
	FUNC4(priv, port, 0);
	FUNC5(priv, FUNC0(port), reg);
	FUNC4(priv, port, 1);
}