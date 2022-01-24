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
typedef  int /*<<< orphan*/  u32 ;
struct mac_priv_s {int /*<<< orphan*/  dev; } ;
struct mac_device {int (* set_exception ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  fman_mac; struct mac_priv_s* priv; } ;
struct fman_mac_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FM_MAC_EX_1G_RX_MIB_CNT_OVFL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fman_mac_params*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mac_device*,struct fman_mac_params*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct mac_device *mac_dev)
{
	int			err;
	struct mac_priv_s	*priv;
	struct fman_mac_params	params;
	u32			version;

	priv = mac_dev->priv;

	FUNC8(mac_dev, &params);

	mac_dev->fman_mac = FUNC3(&params);
	if (!mac_dev->fman_mac) {
		err = -EINVAL;
		goto _return;
	}

	err = FUNC1(mac_dev->fman_mac, FUNC7());
	if (err < 0)
		goto _return_fm_mac_free;

	err = FUNC2(mac_dev->fman_mac, true);
	if (err < 0)
		goto _return_fm_mac_free;

	err = FUNC6(mac_dev->fman_mac);
	if (err < 0)
		goto _return_fm_mac_free;

	/* For 1G MAC, disable by default the MIB counters overflow interrupt */
	err = mac_dev->set_exception(mac_dev->fman_mac,
				     FM_MAC_EX_1G_RX_MIB_CNT_OVFL, false);
	if (err < 0)
		goto _return_fm_mac_free;

	err = FUNC5(mac_dev->fman_mac, &version);
	if (err < 0)
		goto _return_fm_mac_free;

	FUNC0(priv->dev, "FMan dTSEC version: 0x%08x\n", version);

	goto _return;

_return_fm_mac_free:
	FUNC4(mac_dev->fman_mac);

_return:
	return err;
}