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
 int /*<<< orphan*/  FM_MAC_EX_10G_TX_ECC_ER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mac_device*,struct fman_mac_params*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fman_mac_params*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mac_device *mac_dev)
{
	int err;
	struct mac_priv_s	*priv;
	struct fman_mac_params	params;
	u32			version;

	priv = mac_dev->priv;

	FUNC2(mac_dev, &params);

	mac_dev->fman_mac = FUNC5(&params);
	if (!mac_dev->fman_mac) {
		err = -EINVAL;
		goto _return;
	}

	err = FUNC4(mac_dev->fman_mac, FUNC1());
	if (err < 0)
		goto _return_fm_mac_free;

	err = FUNC8(mac_dev->fman_mac);
	if (err < 0)
		goto _return_fm_mac_free;

	/* For 10G MAC, disable Tx ECC exception */
	err = mac_dev->set_exception(mac_dev->fman_mac,
				     FM_MAC_EX_10G_TX_ECC_ER, false);
	if (err < 0)
		goto _return_fm_mac_free;

	err = FUNC7(mac_dev->fman_mac, &version);
	if (err < 0)
		goto _return_fm_mac_free;

	FUNC0(priv->dev, "FMan XGEC version: 0x%08x\n", version);

	goto _return;

_return_fm_mac_free:
	FUNC6(mac_dev->fman_mac);

_return:
	return err;
}