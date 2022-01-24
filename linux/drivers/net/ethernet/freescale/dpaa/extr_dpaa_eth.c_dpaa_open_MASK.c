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
struct net_device {int dummy; } ;
struct mac_device {int (* start ) (struct mac_device*) ;int /*<<< orphan*/ * port; } ;
struct dpaa_priv {struct mac_device* mac_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa_priv*) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 struct dpaa_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct dpaa_priv*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct mac_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *net_dev)
{
	struct mac_device *mac_dev;
	struct dpaa_priv *priv;
	int err, i;

	priv = FUNC6(net_dev);
	mac_dev = priv->mac_dev;
	FUNC2(priv);

	err = FUNC3(net_dev);
	if (err)
		goto phy_init_failed;

	for (i = 0; i < FUNC0(mac_dev->port); i++) {
		err = FUNC5(mac_dev->port[i]);
		if (err)
			goto mac_start_failed;
	}

	err = priv->mac_dev->start(mac_dev);
	if (err < 0) {
		FUNC7(priv, ifup, net_dev, "mac_dev->start() = %d\n", err);
		goto mac_start_failed;
	}

	FUNC8(net_dev);

	return 0;

mac_start_failed:
	for (i = 0; i < FUNC0(mac_dev->port); i++)
		FUNC4(mac_dev->port[i]);

phy_init_failed:
	FUNC1(priv);

	return err;
}