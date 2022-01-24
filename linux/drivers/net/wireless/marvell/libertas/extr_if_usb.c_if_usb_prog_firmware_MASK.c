#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lbs_private {int ehs_remove_supported; int /*<<< orphan*/  wol_criteria; struct if_usb_card* card; } ;
struct if_usb_card {scalar_t__ bootcmdresp; int CRC_OK; int fwseqnum; struct firmware const* fw; TYPE_2__* priv; scalar_t__ fwdnldover; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  fw_timeout; scalar_t__ surprise_removed; int /*<<< orphan*/  fw_wq; scalar_t__ fwfinalblk; scalar_t__ totalbytes; scalar_t__ fwlastblksent; int /*<<< orphan*/  tx_urb; TYPE_1__* udev; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int fw_ready; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_CMD_FW_BY_USB ; 
 scalar_t__ BOOT_CMD_RESP_NOT_SUPPORTED ; 
 int /*<<< orphan*/  EHS_REMOVE_WAKEUP ; 
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct if_usb_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*) ; 
 scalar_t__ FUNC6 (struct if_usb_card*) ; 
 scalar_t__ FUNC7 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(struct lbs_private *priv, int ret,
				 const struct firmware *fw,
				 const struct firmware *unused)
{
	struct if_usb_card *cardp = priv->card;
	int i = 0;
	static int reset_count = 10;

	if (ret) {
		FUNC12("failed to find firmware (%d)\n", ret);
		goto done;
	}

	cardp->fw = fw;
	if (FUNC0(cardp->fw->data, cardp->fw->size)) {
		ret = -EINVAL;
		goto done;
	}

	/* Cancel any pending usb business */
	FUNC14(cardp->rx_urb);
	FUNC14(cardp->tx_urb);

	cardp->fwlastblksent = 0;
	cardp->fwdnldover = 0;
	cardp->totalbytes = 0;
	cardp->fwfinalblk = 0;
	cardp->bootcmdresp = 0;

restart:
	if (FUNC7(cardp) < 0) {
		FUNC8(&cardp->udev->dev, "URB submission is failed\n");
		ret = -EIO;
		goto done;
	}

	cardp->bootcmdresp = 0;
	do {
		int j = 0;
		i++;
		FUNC2(cardp, BOOT_CMD_FW_BY_USB);
		/* wait for command response */
		do {
			j++;
			FUNC11(100);
		} while (cardp->bootcmdresp == 0 && j < 10);
	} while (cardp->bootcmdresp == 0 && i < 5);

	if (cardp->bootcmdresp == BOOT_CMD_RESP_NOT_SUPPORTED) {
		/* Return to normal operation */
		ret = -EOPNOTSUPP;
		FUNC14(cardp->rx_urb);
		FUNC14(cardp->tx_urb);
		if (FUNC6(cardp) < 0)
			ret = -EIO;
		goto done;
	} else if (cardp->bootcmdresp <= 0) {
		if (--reset_count >= 0) {
			FUNC3(cardp);
			goto restart;
		}
		ret = -EIO;
		goto done;
	}

	i = 0;

	cardp->totalbytes = 0;
	cardp->fwlastblksent = 0;
	cardp->CRC_OK = 1;
	cardp->fwdnldover = 0;
	cardp->fwseqnum = -1;
	cardp->totalbytes = 0;
	cardp->fwfinalblk = 0;

	/* Send the first firmware packet... */
	FUNC4(cardp);

	/* ... and wait for the process to complete */
	FUNC15(cardp->fw_wq, cardp->surprise_removed || cardp->fwdnldover);

	FUNC1(&cardp->fw_timeout);
	FUNC14(cardp->rx_urb);

	if (!cardp->fwdnldover) {
		FUNC13("failed to load fw, resetting device!\n");
		if (--reset_count >= 0) {
			FUNC3(cardp);
			goto restart;
		}

		FUNC13("FW download failure, time = %d ms\n", i * 100);
		ret = -EIO;
		goto done;
	}

	cardp->priv->fw_ready = 1;
	FUNC6(cardp);

	if (FUNC10(priv))
		goto done;

	FUNC5(priv);

	/*
	 * EHS_REMOVE_WAKEUP is not supported on all versions of the firmware.
	 */
	priv->wol_criteria = EHS_REMOVE_WAKEUP;
	if (FUNC9(priv, priv->wol_criteria, NULL))
		priv->ehs_remove_supported = false;

 done:
	cardp->fw = NULL;
}