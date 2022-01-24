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
struct mac_priv_s {scalar_t__ max_speed; int /*<<< orphan*/  dev; int /*<<< orphan*/  fixed_link; } ;
struct mac_device {int /*<<< orphan*/  fman_mac; struct mac_priv_s* priv; } ;
struct fman_mac_params {int /*<<< orphan*/  phy_if; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_XGMII ; 
 scalar_t__ SPEED_10000 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fman_mac_params*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mac_device*,struct fman_mac_params*) ; 

__attribute__((used)) static int FUNC9(struct mac_device *mac_dev)
{
	int			 err;
	struct mac_priv_s	*priv;
	struct fman_mac_params	 params;

	priv = mac_dev->priv;

	FUNC8(mac_dev, &params);

	if (priv->max_speed == SPEED_10000)
		params.phy_if = PHY_INTERFACE_MODE_XGMII;

	mac_dev->fman_mac = FUNC5(&params);
	if (!mac_dev->fman_mac) {
		err = -EINVAL;
		goto _return;
	}

	err = FUNC3(mac_dev->fman_mac, FUNC1());
	if (err < 0)
		goto _return_fm_mac_free;

	err = FUNC4(mac_dev->fman_mac, true);
	if (err < 0)
		goto _return_fm_mac_free;

	err = FUNC2(mac_dev->fman_mac, priv->fixed_link);
	if (err < 0)
		goto _return_fm_mac_free;

	err = FUNC7(mac_dev->fman_mac);
	if (err < 0)
		goto _return_fm_mac_free;

	FUNC0(priv->dev, "FMan MEMAC\n");

	goto _return;

_return_fm_mac_free:
	FUNC6(mac_dev->fman_mac);

_return:
	return err;
}