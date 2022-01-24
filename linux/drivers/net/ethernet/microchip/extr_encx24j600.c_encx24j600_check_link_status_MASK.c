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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct encx24j600_priv {scalar_t__ autoneg; int full_duplex; int /*<<< orphan*/  speed; struct net_device* ndev; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  ESTAT ; 
 int PHYLNK ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int FUNC0 (struct encx24j600_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct encx24j600_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 

__attribute__((used)) static void FUNC5(struct encx24j600_priv *priv)
{
	struct net_device *dev = priv->ndev;
	u16 estat;

	estat = FUNC0(priv, ESTAT);

	if (estat & PHYLNK) {
		if (priv->autoneg == AUTONEG_ENABLE)
			FUNC1(priv);

		FUNC3(dev);
		FUNC4(priv, ifup, dev, "link up\n");
	} else {
		FUNC4(priv, ifdown, dev, "link down\n");

		/* Re-enable autoneg since we won't know what we might be
		 * connected to when the link is brought back up again.
		 */
		priv->autoneg  = AUTONEG_ENABLE;
		priv->full_duplex = true;
		priv->speed = SPEED_100;
		FUNC2(dev);
	}
}