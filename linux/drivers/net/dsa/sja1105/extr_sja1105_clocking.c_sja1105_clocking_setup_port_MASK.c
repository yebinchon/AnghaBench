#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sja1105_xmii_params_entry {int* xmii_mode; int /*<<< orphan*/ * phy_mac; } ;
struct TYPE_4__ {TYPE_3__* tables; } ;
struct sja1105_private {TYPE_1__ static_config; TYPE_2__* ds; } ;
struct device {int dummy; } ;
typedef  int sja1105_phy_interface_t ;
typedef  int /*<<< orphan*/  sja1105_mii_role_t ;
struct TYPE_6__ {struct sja1105_xmii_params_entry* entries; } ;
struct TYPE_5__ {struct device* dev; } ;

/* Variables and functions */
 size_t BLK_IDX_XMII_PARAMS ; 
 int EINVAL ; 
#define  XMII_MODE_MII 130 
#define  XMII_MODE_RGMII 129 
#define  XMII_MODE_RMII 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int FUNC1 (struct sja1105_private*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sja1105_private*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sja1105_private*,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct sja1105_private *priv, int port)
{
	struct sja1105_xmii_params_entry *mii;
	struct device *dev = priv->ds->dev;
	sja1105_phy_interface_t phy_mode;
	sja1105_mii_role_t role;
	int rc;

	mii = priv->static_config.tables[BLK_IDX_XMII_PARAMS].entries;

	/* RGMII etc */
	phy_mode = mii->xmii_mode[port];
	/* MAC or PHY, for applicable types (not RGMII) */
	role = mii->phy_mac[port];

	switch (phy_mode) {
	case XMII_MODE_MII:
		rc = FUNC1(priv, port, role);
		break;
	case XMII_MODE_RMII:
		rc = FUNC3(priv, port, role);
		break;
	case XMII_MODE_RGMII:
		rc = FUNC2(priv, port, role);
		break;
	default:
		FUNC0(dev, "Invalid interface mode specified: %d\n",
			phy_mode);
		return -EINVAL;
	}
	if (rc)
		FUNC0(dev, "Clocking setup for port %d failed: %d\n",
			port, rc);
	return rc;
}