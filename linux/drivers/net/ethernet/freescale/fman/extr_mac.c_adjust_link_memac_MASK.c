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
struct phy_device {int /*<<< orphan*/  speed; } ;
struct mac_device {TYPE_1__* priv; struct fman_mac* fman_mac; struct phy_device* phy_dev; } ;
struct fman_mac {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mac_device*,int*,int*) ; 
 int FUNC2 (struct mac_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fman_mac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mac_device *mac_dev)
{
	struct phy_device *phy_dev = mac_dev->phy_dev;
	struct fman_mac *fman_mac;
	bool rx_pause, tx_pause;
	int err;

	fman_mac = mac_dev->fman_mac;
	FUNC3(fman_mac, phy_dev->speed);

	FUNC1(mac_dev, &rx_pause, &tx_pause);
	err = FUNC2(mac_dev, rx_pause, tx_pause);
	if (err < 0)
		FUNC0(mac_dev->priv->dev, "fman_set_mac_active_pause() = %d\n",
			err);
}