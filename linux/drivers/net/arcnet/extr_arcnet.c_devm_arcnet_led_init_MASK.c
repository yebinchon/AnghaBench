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
struct net_device {int /*<<< orphan*/  dev; } ;
struct arcnet_local {int /*<<< orphan*/  recon_led_trig; int /*<<< orphan*/  recon_led_trig_name; int /*<<< orphan*/  tx_led_trig; int /*<<< orphan*/  tx_led_trig_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  arcnet_led_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct arcnet_local* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int,int) ; 

void FUNC6(struct net_device *netdev, int index, int subid)
{
	struct arcnet_local *lp = FUNC4(netdev);
	void *res;

	res = FUNC1(arcnet_led_release, 0, GFP_KERNEL);
	if (!res) {
		FUNC3(netdev, "cannot register LED triggers\n");
		return;
	}

	FUNC5(lp->tx_led_trig_name, sizeof(lp->tx_led_trig_name),
		 "arc%d-%d-tx", index, subid);
	FUNC5(lp->recon_led_trig_name, sizeof(lp->recon_led_trig_name),
		 "arc%d-%d-recon", index, subid);

	FUNC2(lp->tx_led_trig_name,
				    &lp->tx_led_trig);
	FUNC2(lp->recon_led_trig_name,
				    &lp->recon_led_trig);

	FUNC0(&netdev->dev, res);
}