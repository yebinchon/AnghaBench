#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lbtf_private {scalar_t__ surpriseremoved; struct if_usb_card* card; } ;
struct if_usb_card {scalar_t__ bootcmdresp; int CRC_OK; int fwseqnum; struct lbtf_private* priv; TYPE_2__* fw; scalar_t__ fwdnldover; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  fw_timeout; int /*<<< orphan*/  fw_wq; scalar_t__ fwfinalblk; scalar_t__ totalbytes; scalar_t__ fwlastblksent; TYPE_1__* udev; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_CMD_FW_BY_USB ; 
 int /*<<< orphan*/  LBTF_DEB_USB ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct if_usb_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lbtf_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct lbtf_private*) ; 
 scalar_t__ FUNC6 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int lbtf_fw_name ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int FUNC16 (TYPE_2__**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC19(struct lbtf_private *priv)
{
	struct if_usb_card *cardp = priv->card;
	int i = 0;
	static int reset_count = 10;
	int ret = 0;

	FUNC9(LBTF_DEB_USB);

	cardp->priv = priv;

	FUNC7(THIS_MODULE);
	ret = FUNC16(&cardp->fw, lbtf_fw_name, &cardp->udev->dev);
	if (ret < 0) {
		FUNC13("request_firmware() failed with %#x\n", ret);
		FUNC13("firmware %s not found\n", lbtf_fw_name);
		FUNC8(THIS_MODULE);
		goto done;
	}
	FUNC8(THIS_MODULE);

	if (FUNC0(cardp->fw->data, cardp->fw->size))
		goto release_fw;

restart:
	if (FUNC6(cardp) < 0) {
		FUNC11(&cardp->udev->dev, "URB submission is failed\n");
		ret = -1;
		goto release_fw;
	}

	cardp->bootcmdresp = 0;
	do {
		int j = 0;
		i++;
		/* Issue Boot command = 1, Boot from Download-FW */
		FUNC2(cardp, BOOT_CMD_FW_BY_USB);
		/* wait for command response */
		do {
			j++;
			FUNC12(100);
		} while (cardp->bootcmdresp == 0 && j < 10);
	} while (cardp->bootcmdresp == 0 && i < 5);

	if (cardp->bootcmdresp <= 0) {
		if (--reset_count >= 0) {
			FUNC3(priv);
			goto restart;
		}
		return -1;
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
	FUNC18(cardp->fw_wq, cardp->priv->surpriseremoved ||
					       cardp->fwdnldover);

	FUNC1(&cardp->fw_timeout);
	FUNC17(cardp->rx_urb);

	if (!cardp->fwdnldover) {
		FUNC14("failed to load fw, resetting device!\n");
		if (--reset_count >= 0) {
			FUNC3(priv);
			goto restart;
		}

		FUNC14("FW download failure, time = %d ms\n", i * 100);
		ret = -1;
		goto release_fw;
	}

 release_fw:
	FUNC15(cardp->fw);
	cardp->fw = NULL;

	FUNC5(cardp->priv);

 done:
	FUNC10(LBTF_DEB_USB, "ret %d", ret);
	return ret;
}