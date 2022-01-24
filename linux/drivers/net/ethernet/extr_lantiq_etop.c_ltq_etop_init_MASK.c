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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int watchdog_timeo; int /*<<< orphan*/  addr_assign_type; } ;
struct ltq_etop_priv {TYPE_1__* pldata; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  NET_ADDR_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr*,int /*<<< orphan*/ *,int) ; 
 struct ltq_etop_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static int
FUNC13(struct net_device *dev)
{
	struct ltq_etop_priv *priv = FUNC10(dev);
	struct sockaddr mac;
	int err;
	bool random_mac = false;

	dev->watchdog_timeo = 10 * HZ;
	err = FUNC5(dev);
	if (err)
		goto err_hw;
	FUNC3(dev, 1500);

	FUNC9(&mac, &priv->pldata->mac, sizeof(struct sockaddr));
	if (!FUNC2(mac.sa_data)) {
		FUNC11("etop: invalid MAC, using random\n");
		FUNC0(mac.sa_data);
		random_mac = true;
	}

	err = FUNC7(dev, &mac);
	if (err)
		goto err_netdev;

	/* Set addr_assign_type here, ltq_etop_set_mac_address would reset it. */
	if (random_mac)
		dev->addr_assign_type = NET_ADDR_RANDOM;

	FUNC8(dev);
	err = FUNC6(dev);
	if (err)
		goto err_netdev;
	return 0;

err_netdev:
	FUNC12(dev);
	FUNC1(dev);
err_hw:
	FUNC4(dev);
	return err;
}