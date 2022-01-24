#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct if_usb_card {int totalbytes; int fwlastblksent; int fwfinalblk; TYPE_2__* udev; int /*<<< orphan*/  fwseqnum; struct fwdata* ep_out_buf; int /*<<< orphan*/  CRC_OK; TYPE_1__* fw; } ;
struct fwheader {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dnldcmd; int /*<<< orphan*/  datalength; } ;
struct fwdata {TYPE_3__ hdr; int /*<<< orphan*/  seqnum; TYPE_3__* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_HAS_DATA_TO_RECV ; 
 int /*<<< orphan*/  FW_HAS_LAST_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct if_usb_card*,struct fwdata*,int) ; 

__attribute__((used)) static int FUNC5(struct if_usb_card *cardp)
{
	struct fwdata *fwdata = cardp->ep_out_buf;
	const uint8_t *firmware = cardp->fw->data;

	/* If we got a CRC failure on the last block, back
	   up and retry it */
	if (!cardp->CRC_OK) {
		cardp->totalbytes = cardp->fwlastblksent;
		cardp->fwseqnum--;
	}

	FUNC1(&cardp->udev->dev, "totalbytes = %d\n",
		     cardp->totalbytes);

	/* struct fwdata (which we sent to the card) has an
	   extra __le32 field in between the header and the data,
	   which is not in the struct fwheader in the actual
	   firmware binary. Insert the seqnum in the middle... */
	FUNC3(&fwdata->hdr, &firmware[cardp->totalbytes],
	       sizeof(struct fwheader));

	cardp->fwlastblksent = cardp->totalbytes;
	cardp->totalbytes += sizeof(struct fwheader);

	FUNC3(fwdata->data, &firmware[cardp->totalbytes],
	       FUNC2(fwdata->hdr.datalength));

	FUNC1(&cardp->udev->dev, "Data length = %d\n",
		     FUNC2(fwdata->hdr.datalength));

	fwdata->seqnum = FUNC0(++cardp->fwseqnum);
	cardp->totalbytes += FUNC2(fwdata->hdr.datalength);

	FUNC4(cardp, cardp->ep_out_buf, sizeof(struct fwdata) +
		     FUNC2(fwdata->hdr.datalength));

	if (fwdata->hdr.dnldcmd == FUNC0(FW_HAS_DATA_TO_RECV)) {
		FUNC1(&cardp->udev->dev, "There are data to follow\n");
		FUNC1(&cardp->udev->dev, "seqnum = %d totalbytes = %d\n",
			     cardp->fwseqnum, cardp->totalbytes);
	} else if (fwdata->hdr.dnldcmd == FUNC0(FW_HAS_LAST_BLOCK)) {
		FUNC1(&cardp->udev->dev, "Host has finished FW downloading\n");
		FUNC1(&cardp->udev->dev, "Downloading FW JUMP BLOCK\n");

		cardp->fwfinalblk = 1;
	}

	FUNC1(&cardp->udev->dev, "Firmware download done; size %d\n",
		     cardp->totalbytes);

	return 0;
}