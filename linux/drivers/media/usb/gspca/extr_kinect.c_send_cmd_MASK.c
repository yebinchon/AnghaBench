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
typedef  void uint8_t ;
typedef  unsigned int uint16_t ;
struct usb_device {int dummy; } ;
struct sd {unsigned int cam_tag; void* ibuf; void* obuf; } ;
struct gspca_dev {struct usb_device* dev; } ;
struct cam_hdr {int* magic; int cmd; int tag; void* len; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBO ; 
 int EREMOTEIO ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct usb_device*,void*,int) ; 
 int FUNC3 (struct usb_device*,void*,unsigned int) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,int) ; 

__attribute__((used)) static int FUNC8(struct gspca_dev *gspca_dev, uint16_t cmd, void *cmdbuf,
		unsigned int cmd_len, void *replybuf, unsigned int reply_len)
{
	struct sd *sd = (struct sd *) gspca_dev;
	struct usb_device *udev = gspca_dev->dev;
	int res, actual_len;
	uint8_t *obuf = sd->obuf;
	uint8_t *ibuf = sd->ibuf;
	struct cam_hdr *chdr = (void *)obuf;
	struct cam_hdr *rhdr = (void *)ibuf;

	if (cmd_len & 1 || cmd_len > (0x400 - sizeof(*chdr))) {
		FUNC6("send_cmd: Invalid command length (0x%x)\n", cmd_len);
		return -1;
	}

	chdr->magic[0] = 0x47;
	chdr->magic[1] = 0x4d;
	chdr->cmd = FUNC0(cmd);
	chdr->tag = FUNC0(sd->cam_tag);
	chdr->len = FUNC0(cmd_len / 2);

	FUNC5(obuf+sizeof(*chdr), cmdbuf, cmd_len);

	res = FUNC3(udev, obuf, cmd_len + sizeof(*chdr));
	FUNC1(gspca_dev, D_USBO, "Control cmd=%04x tag=%04x len=%04x: %d\n",
		  cmd,
		  sd->cam_tag, cmd_len, res);
	if (res < 0) {
		FUNC6("send_cmd: Output control transfer failed (%d)\n", res);
		return res;
	}

	do {
		actual_len = FUNC2(udev, ibuf, 0x200);
	} while (actual_len == 0);
	FUNC1(gspca_dev, D_USBO, "Control reply: %d\n", actual_len);
	if (actual_len < (int)sizeof(*rhdr)) {
		FUNC6("send_cmd: Input control transfer failed (%d)\n",
		       actual_len);
		return actual_len < 0 ? actual_len : -EREMOTEIO;
	}
	actual_len -= sizeof(*rhdr);

	if (rhdr->magic[0] != 0x52 || rhdr->magic[1] != 0x42) {
		FUNC6("send_cmd: Bad magic %02x %02x\n",
		       rhdr->magic[0], rhdr->magic[1]);
		return -1;
	}
	if (rhdr->cmd != chdr->cmd) {
		FUNC6("send_cmd: Bad cmd %02x != %02x\n",
		       rhdr->cmd, chdr->cmd);
		return -1;
	}
	if (rhdr->tag != chdr->tag) {
		FUNC6("send_cmd: Bad tag %04x != %04x\n",
		       rhdr->tag, chdr->tag);
		return -1;
	}
	if (FUNC4(rhdr->len) != (actual_len/2)) {
		FUNC6("send_cmd: Bad len %04x != %04x\n",
		       FUNC4(rhdr->len), (int)(actual_len/2));
		return -1;
	}

	if (actual_len > reply_len) {
		FUNC7("send_cmd: Data buffer is %d bytes long, but got %d bytes\n",
			reply_len, actual_len);
		FUNC5(replybuf, ibuf+sizeof(*rhdr), reply_len);
	} else {
		FUNC5(replybuf, ibuf+sizeof(*rhdr), actual_len);
	}

	sd->cam_tag++;

	return actual_len;
}