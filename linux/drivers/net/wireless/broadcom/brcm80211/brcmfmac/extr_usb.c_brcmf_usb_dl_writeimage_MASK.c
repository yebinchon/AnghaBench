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
typedef  char u8 ;
typedef  scalar_t__ u32 ;
struct rdl_state_le {int /*<<< orphan*/  bytes; int /*<<< orphan*/  state; } ;
struct brcmf_usbdev_info {int dummy; } ;
typedef  int /*<<< orphan*/  state ;

/* Variables and functions */
 scalar_t__ DL_BAD_CRC ; 
 scalar_t__ DL_BAD_HDR ; 
 int /*<<< orphan*/  DL_GETSTATE ; 
 int /*<<< orphan*/  DL_START ; 
 scalar_t__ DL_WAITING ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int TRX_RDL_CHUNK ; 
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct brcmf_usbdev_info*,int /*<<< orphan*/ ,struct rdl_state_le*,int) ; 
 scalar_t__ FUNC3 (struct brcmf_usbdev_info*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int) ; 

__attribute__((used)) static int
FUNC8(struct brcmf_usbdev_info *devinfo, u8 *fw, int fwlen)
{
	unsigned int sendlen, sent, dllen;
	char *bulkchunk = NULL, *dlpos;
	struct rdl_state_le state;
	u32 rdlstate, rdlbytes;
	int err = 0;

	FUNC0(USB, "Enter, fw %p, len %d\n", fw, fwlen);

	bulkchunk = FUNC5(TRX_RDL_CHUNK, GFP_ATOMIC);
	if (bulkchunk == NULL) {
		err = -ENOMEM;
		goto fail;
	}

	/* 1) Prepare USB boot loader for runtime image */
	FUNC2(devinfo, DL_START, &state, sizeof(state));

	rdlstate = FUNC6(state.state);
	rdlbytes = FUNC6(state.bytes);

	/* 2) Check we are in the Waiting state */
	if (rdlstate != DL_WAITING) {
		FUNC1("Failed to DL_START\n");
		err = -EINVAL;
		goto fail;
	}
	sent = 0;
	dlpos = fw;
	dllen = fwlen;

	/* Get chip id and rev */
	while (rdlbytes != dllen) {
		/* Wait until the usb device reports it received all
		 * the bytes we sent */
		if ((rdlbytes == sent) && (rdlbytes != dllen)) {
			if ((dllen-sent) < TRX_RDL_CHUNK)
				sendlen = dllen-sent;
			else
				sendlen = TRX_RDL_CHUNK;

			/* simply avoid having to send a ZLP by ensuring we
			 * never have an even
			 * multiple of 64
			 */
			if (!(sendlen % 64))
				sendlen -= 4;

			/* send data */
			FUNC7(bulkchunk, dlpos, sendlen);
			if (FUNC3(devinfo, bulkchunk,
						   sendlen)) {
				FUNC1("send_bulk failed\n");
				err = -EINVAL;
				goto fail;
			}

			dlpos += sendlen;
			sent += sendlen;
		}
		err = FUNC2(devinfo, DL_GETSTATE, &state,
				       sizeof(state));
		if (err) {
			FUNC1("DL_GETSTATE Failed\n");
			goto fail;
		}

		rdlstate = FUNC6(state.state);
		rdlbytes = FUNC6(state.bytes);

		/* restart if an error is reported */
		if (rdlstate == DL_BAD_HDR || rdlstate == DL_BAD_CRC) {
			FUNC1("Bad Hdr or Bad CRC state %d\n",
				  rdlstate);
			err = -EINVAL;
			goto fail;
		}
	}

fail:
	FUNC4(bulkchunk);
	FUNC0(USB, "Exit, err=%d\n", err);
	return err;
}