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
struct net_device {int /*<<< orphan*/ * phydev; } ;
struct mac_device {int (* stop ) (struct mac_device*) ;int /*<<< orphan*/ * port; } ;
struct dpaa_priv {struct mac_device* mac_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifdown ; 
 struct dpaa_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa_priv*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mac_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct net_device *net_dev)
{
	struct mac_device *mac_dev;
	struct dpaa_priv *priv;
	int i, err, error;

	priv = FUNC2(net_dev);
	mac_dev = priv->mac_dev;

	FUNC4(net_dev);
	/* Allow the Fman (Tx) port to process in-flight frames before we
	 * try switching it off.
	 */
	FUNC7(5000, 10000);

	err = mac_dev->stop(mac_dev);
	if (err < 0)
		FUNC3(priv, ifdown, net_dev, "mac_dev->stop() = %d\n",
			  err);

	for (i = 0; i < FUNC0(mac_dev->port); i++) {
		error = FUNC1(mac_dev->port[i]);
		if (error)
			err = error;
	}

	if (net_dev->phydev)
		FUNC5(net_dev->phydev);
	net_dev->phydev = NULL;

	return err;
}