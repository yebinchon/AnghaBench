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
typedef  int u16 ;
struct usb_req {int wlen; int rlen; int mbox; int cmd; int* wbuf; int* rbuf; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct state {int* buf; int /*<<< orphan*/  seq; } ;
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; struct usb_interface* intf; } ;

/* Variables and functions */
 int ACK_HDR_LEN ; 
 int BUF_LEN ; 
 int CHECKSUM_LEN ; 
 scalar_t__ CMD_FW_DL ; 
 scalar_t__ CMD_IR_GET ; 
 int EINVAL ; 
 int EIO ; 
 int REQ_HDR_LEN ; 
 int FUNC0 (int*,int) ; 
 struct state* FUNC1 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__,int,...) ; 
 int FUNC4 (struct dvb_usb_device*,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dvb_usb_device *d, struct usb_req *req)
{
#define REQ_HDR_LEN 4 /* send header size */
#define ACK_HDR_LEN 3 /* rece header size */
#define CHECKSUM_LEN 2
#define USB_TIMEOUT 2000
	struct state *state = FUNC1(d);
	struct usb_interface *intf = d->intf;
	int ret, wlen, rlen;
	u16 checksum, tmp_checksum;

	FUNC6(&d->usb_mutex);

	/* buffer overflow check */
	if (req->wlen > (BUF_LEN - REQ_HDR_LEN - CHECKSUM_LEN) ||
			req->rlen > (BUF_LEN - ACK_HDR_LEN - CHECKSUM_LEN)) {
		FUNC3(&intf->dev, "too much data wlen=%d rlen=%d\n",
			req->wlen, req->rlen);
		ret = -EINVAL;
		goto exit;
	}

	state->buf[0] = REQ_HDR_LEN + req->wlen + CHECKSUM_LEN - 1;
	state->buf[1] = req->mbox;
	state->buf[2] = req->cmd;
	state->buf[3] = state->seq++;
	FUNC5(&state->buf[REQ_HDR_LEN], req->wbuf, req->wlen);

	wlen = REQ_HDR_LEN + req->wlen + CHECKSUM_LEN;
	rlen = ACK_HDR_LEN + req->rlen + CHECKSUM_LEN;

	/* calc and add checksum */
	checksum = FUNC0(state->buf, state->buf[0] - 1);
	state->buf[state->buf[0] - 1] = (checksum >> 8);
	state->buf[state->buf[0] - 0] = (checksum & 0xff);

	/* no ack for these packets */
	if (req->cmd == CMD_FW_DL)
		rlen = 0;

	ret = FUNC4(d,
			state->buf, wlen, state->buf, rlen);
	if (ret)
		goto exit;

	/* no ack for those packets */
	if (req->cmd == CMD_FW_DL)
		goto exit;

	/* verify checksum */
	checksum = FUNC0(state->buf, rlen - 2);
	tmp_checksum = (state->buf[rlen - 2] << 8) | state->buf[rlen - 1];
	if (tmp_checksum != checksum) {
		FUNC3(&intf->dev, "command=%02x checksum mismatch (%04x != %04x)\n",
			req->cmd, tmp_checksum, checksum);
		ret = -EIO;
		goto exit;
	}

	/* check status */
	if (state->buf[2]) {
		/* fw returns status 1 when IR code was not received */
		if (req->cmd == CMD_IR_GET || state->buf[2] == 1) {
			ret = 1;
			goto exit;
		}

		FUNC2(&intf->dev, "command=%02x failed fw error=%d\n",
			req->cmd, state->buf[2]);
		ret = -EIO;
		goto exit;
	}

	/* read request, copy returned data to return buf */
	if (req->rlen)
		FUNC5(req->rbuf, &state->buf[ACK_HDR_LEN], req->rlen);
exit:
	FUNC7(&d->usb_mutex);
	return ret;
}