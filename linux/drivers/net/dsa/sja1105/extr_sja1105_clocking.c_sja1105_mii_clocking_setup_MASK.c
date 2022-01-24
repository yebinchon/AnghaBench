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
struct sja1105_private {TYPE_1__* ds; } ;
struct device {int dummy; } ;
typedef  scalar_t__ sja1105_mii_role_t ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ XMII_MAC ; 
 scalar_t__ XMII_PHY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*) ; 
 int FUNC1 (struct sja1105_private*,int,int,int) ; 
 int FUNC2 (struct sja1105_private*,int) ; 
 int FUNC3 (struct sja1105_private*,int) ; 
 int FUNC4 (struct sja1105_private*,int) ; 
 int FUNC5 (struct sja1105_private*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct sja1105_private *priv, int port,
				      sja1105_mii_role_t role)
{
	struct device *dev = priv->ds->dev;
	int rc;

	FUNC0(dev, "Configuring MII-%s clocking\n",
		(role == XMII_MAC) ? "MAC" : "PHY");
	/* If role is MAC, disable IDIV
	 * If role is PHY, enable IDIV and configure for 1/1 divider
	 */
	rc = FUNC1(priv, port, (role == XMII_PHY), 1);
	if (rc < 0)
		return rc;

	/* Configure CLKSRC of MII_TX_CLK_n
	 *   * If role is MAC, select TX_CLK_n
	 *   * If role is PHY, select IDIV_n
	 */
	rc = FUNC5(priv, port, role);
	if (rc < 0)
		return rc;

	/* Configure CLKSRC of MII_RX_CLK_n
	 * Select RX_CLK_n
	 */
	rc = FUNC4(priv, port);
	if (rc < 0)
		return rc;

	if (role == XMII_PHY) {
		/* Per MII spec, the PHY (which is us) drives the TX_CLK pin */

		/* Configure CLKSRC of EXT_TX_CLK_n
		 * Select IDIV_n
		 */
		rc = FUNC3(priv, port);
		if (rc < 0)
			return rc;

		/* Configure CLKSRC of EXT_RX_CLK_n
		 * Select IDIV_n
		 */
		rc = FUNC2(priv, port);
		if (rc < 0)
			return rc;
	}
	return 0;
}