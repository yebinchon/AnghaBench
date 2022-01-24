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
struct esd_usb2_net_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct esd_usb2_net_priv*) ; 
 struct esd_usb2_net_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev)
{
	struct esd_usb2_net_priv *priv = FUNC2(netdev);
	int err;

	/* common open */
	err = FUNC5(netdev);
	if (err)
		return err;

	/* finally start device */
	err = FUNC1(priv);
	if (err) {
		FUNC3(netdev, "couldn't start device: %d\n", err);
		FUNC0(netdev);
		return err;
	}

	FUNC4(netdev);

	return 0;
}