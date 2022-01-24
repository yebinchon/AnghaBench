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
typedef  int u8 ;
typedef  int u16 ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  FW_BOOT 130 
 int FW_BULKOUT_SIZE ; 
#define  FW_CONFIG 129 
#define  FW_CONFIRM 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC7(struct usb_device *udev, int type, u8 *reply,
			      u8 *buf, int size)
{
	u16 checksum;
	int act_len, i, ret;

	FUNC3(buf, 0, size);
	buf[0] = (u8) (FW_BULKOUT_SIZE & 0xff);
	buf[1] = (u8) ((FW_BULKOUT_SIZE >> 8) & 0xff);
	switch (type) {
	case FW_CONFIG:
		buf[2] = 0x11;
		buf[3] = 0x04;
		buf[4] = 0x00;	/* sequence number, original driver doesn't increment it here */
		buf[5] = 0x03;
		checksum = buf[4] + buf[5];
		buf[6] = (u8) ((checksum >> 8) & 0xff);
		buf[7] = (u8) (checksum & 0xff);
		break;
	case FW_CONFIRM:
		buf[2] = 0x11;
		buf[3] = 0x04;
		buf[4] = 0x00;	/* sequence number, original driver doesn't increment it here */
		buf[5] = 0x01;
		checksum = buf[4] + buf[5];
		buf[6] = (u8) ((checksum >> 8) & 0xff);
		buf[7] = (u8) (checksum & 0xff);
		break;
	case FW_BOOT:
		buf[2] = 0x10;
		buf[3] = 0x08;
		buf[4] = 0x00;	/* sequence number, original driver doesn't increment it here */
		buf[5] = 0x97;
		buf[6] = 0xaa;
		buf[7] = 0x55;
		buf[8] = 0xa5;
		buf[9] = 0x5a;
		checksum = 0;
		for (i = 4; i <= 9; i++)
			checksum += buf[i];
		buf[10] = (u8) ((checksum >> 8) & 0xff);
		buf[11] = (u8) (checksum & 0xff);
		break;
	default:
		FUNC2("boot packet invalid boot packet type");
		return -EINVAL;
	}
	FUNC0(">>> ");
	FUNC1(buf, FW_BULKOUT_SIZE + 2, deb_fw);

	ret = FUNC4(udev,
			   FUNC6(udev, 0x02),
			   buf, FW_BULKOUT_SIZE + 2, &act_len, 2000);
	if (ret)
		FUNC2("boot packet bulk message failed: %d (%d/%d)", ret,
		    FW_BULKOUT_SIZE + 2, act_len);
	else
		ret = act_len != FW_BULKOUT_SIZE + 2 ? -1 : 0;
	if (ret)
		return ret;
	FUNC3(buf, 0, 9);
	ret = FUNC4(udev,
			   FUNC5(udev, 0x01), buf, 9, &act_len, 2000);
	if (ret) {
		FUNC2("boot packet recv bulk message failed: %d", ret);
		return ret;
	}
	FUNC0("<<< ");
	FUNC1(buf, act_len, deb_fw);
	checksum = 0;
	switch (type) {
	case FW_CONFIG:
		if (buf[2] != 0x11) {
			FUNC2("boot bad config header.");
			return -EIO;
		}
		if (buf[3] != 0x05) {
			FUNC2("boot bad config size.");
			return -EIO;
		}
		if (buf[4] != 0x00) {
			FUNC2("boot bad config sequence.");
			return -EIO;
		}
		if (buf[5] != 0x04) {
			FUNC2("boot bad config subtype.");
			return -EIO;
		}
		for (i = 4; i <= 6; i++)
			checksum += buf[i];
		if (buf[7] * 256 + buf[8] != checksum) {
			FUNC2("boot bad config checksum.");
			return -EIO;
		}
		*reply = buf[6];
		break;
	case FW_CONFIRM:
		if (buf[2] != 0x11) {
			FUNC2("boot bad confirm header.");
			return -EIO;
		}
		if (buf[3] != 0x05) {
			FUNC2("boot bad confirm size.");
			return -EIO;
		}
		if (buf[4] != 0x00) {
			FUNC2("boot bad confirm sequence.");
			return -EIO;
		}
		if (buf[5] != 0x02) {
			FUNC2("boot bad confirm subtype.");
			return -EIO;
		}
		for (i = 4; i <= 6; i++)
			checksum += buf[i];
		if (buf[7] * 256 + buf[8] != checksum) {
			FUNC2("boot bad confirm checksum.");
			return -EIO;
		}
		*reply = buf[6];
		break;
	case FW_BOOT:
		if (buf[2] != 0x10) {
			FUNC2("boot bad boot header.");
			return -EIO;
		}
		if (buf[3] != 0x05) {
			FUNC2("boot bad boot size.");
			return -EIO;
		}
		if (buf[4] != 0x00) {
			FUNC2("boot bad boot sequence.");
			return -EIO;
		}
		if (buf[5] != 0x01) {
			FUNC2("boot bad boot pattern 01.");
			return -EIO;
		}
		if (buf[6] != 0x10) {
			FUNC2("boot bad boot pattern 10.");
			return -EIO;
		}
		for (i = 4; i <= 6; i++)
			checksum += buf[i];
		if (buf[7] * 256 + buf[8] != checksum) {
			FUNC2("boot bad boot checksum.");
			return -EIO;
		}
		break;

	}

	return 0;
}