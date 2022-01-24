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
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*) ; 
 int FUNC1 (struct sja1105_private*,int,int,int) ; 
 int FUNC2 (struct sja1105_private*,int) ; 
 int FUNC3 (struct sja1105_private*) ; 
 int FUNC4 (struct sja1105_private*,int) ; 

__attribute__((used)) static int FUNC5(struct sja1105_private *priv, int port,
				       sja1105_mii_role_t role)
{
	struct device *dev = priv->ds->dev;
	int rc;

	FUNC0(dev, "Configuring RMII-%s clocking\n",
		(role == XMII_MAC) ? "MAC" : "PHY");
	/* AH1601.pdf chapter 2.5.1. Sources */
	if (role == XMII_MAC) {
		/* Configure and enable PLL1 for 50Mhz output */
		rc = FUNC3(priv);
		if (rc < 0)
			return rc;
	}
	/* Disable IDIV for this port */
	rc = FUNC1(priv, port, false, 1);
	if (rc < 0)
		return rc;
	/* Source to sink mappings */
	rc = FUNC4(priv, port);
	if (rc < 0)
		return rc;
	if (role == XMII_MAC) {
		rc = FUNC2(priv, port);
		if (rc < 0)
			return rc;
	}
	return 0;
}