#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* tables; } ;
struct sja1105_private {TYPE_4__* info; TYPE_3__ static_config; TYPE_1__* ds; } ;
struct sja1105_mac_config_entry {int speed; } ;
struct device {int dummy; } ;
typedef  int sja1105_speed_t ;
typedef  scalar_t__ sja1105_mii_role_t ;
struct TYPE_8__ {int (* setup_rgmii_delay ) (struct sja1105_private*,int) ;} ;
struct TYPE_6__ {struct sja1105_mac_config_entry* entries; } ;
struct TYPE_5__ {struct device* dev; } ;

/* Variables and functions */
 size_t BLK_IDX_MAC_CONFIG ; 
 int EINVAL ; 
#define  SJA1105_SPEED_1000MBPS 131 
#define  SJA1105_SPEED_100MBPS 130 
#define  SJA1105_SPEED_10MBPS 129 
#define  SJA1105_SPEED_AUTO 128 
 scalar_t__ XMII_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct sja1105_private*,int,int,int) ; 
 int FUNC3 (struct sja1105_private*,int,int) ; 
 int FUNC4 (struct sja1105_private*,int) ; 
 int FUNC5 (struct sja1105_private*,int) ; 

__attribute__((used)) static int FUNC6(struct sja1105_private *priv, int port,
					sja1105_mii_role_t role)
{
	struct device *dev = priv->ds->dev;
	struct sja1105_mac_config_entry *mac;
	sja1105_speed_t speed;
	int rc;

	mac = priv->static_config.tables[BLK_IDX_MAC_CONFIG].entries;
	speed = mac[port].speed;

	FUNC0(dev, "Configuring port %d RGMII at speed %dMbps\n",
		port, speed);

	switch (speed) {
	case SJA1105_SPEED_1000MBPS:
		/* 1000Mbps, IDIV disabled (125 MHz) */
		rc = FUNC2(priv, port, false, 1);
		break;
	case SJA1105_SPEED_100MBPS:
		/* 100Mbps, IDIV enabled, divide by 1 (25 MHz) */
		rc = FUNC2(priv, port, true, 1);
		break;
	case SJA1105_SPEED_10MBPS:
		/* 10Mbps, IDIV enabled, divide by 10 (2.5 MHz) */
		rc = FUNC2(priv, port, true, 10);
		break;
	case SJA1105_SPEED_AUTO:
		/* Skip CGU configuration if there is no speed available
		 * (e.g. link is not established yet)
		 */
		FUNC0(dev, "Speed not available, skipping CGU config\n");
		return 0;
	default:
		rc = -EINVAL;
	}

	if (rc < 0) {
		FUNC1(dev, "Failed to configure idiv\n");
		return rc;
	}
	rc = FUNC3(priv, port, speed);
	if (rc < 0) {
		FUNC1(dev, "Failed to configure RGMII Tx clock\n");
		return rc;
	}
	rc = FUNC4(priv, port);
	if (rc < 0) {
		FUNC1(dev, "Failed to configure Tx pad registers\n");
		return rc;
	}
	if (!priv->info->setup_rgmii_delay)
		return 0;
	/* The role has no hardware effect for RGMII. However we use it as
	 * a proxy for this interface being a MAC-to-MAC connection, with
	 * the RGMII internal delays needing to be applied by us.
	 */
	if (role == XMII_MAC)
		return 0;

	return priv->info->setup_rgmii_delay(priv, port);
}