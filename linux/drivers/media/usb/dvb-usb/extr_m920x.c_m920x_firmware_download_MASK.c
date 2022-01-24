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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct usb_device {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  M9206_CORE ; 
 int /*<<< orphan*/  M9206_FILTER ; 
 int /*<<< orphan*/  M9206_FW ; 
 int /*<<< orphan*/  M9206_FW_GO ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct usb_device *udev, const struct firmware *fw)
{
	u16 value, index, size;
	u8 *read, *buff;
	int i, pass, ret = 0;

	buff = FUNC3(65536, GFP_KERNEL);
	if (buff == NULL)
		return -ENOMEM;

	read = FUNC3(4, GFP_KERNEL);
	if (!read) {
		FUNC2(buff);
		return -ENOMEM;
	}

	if ((ret = FUNC4(udev, M9206_FILTER, 0x0, 0x8000, read, 4)) != 0)
		goto done;
	FUNC0("%*ph\n", 4, read);

	if ((ret = FUNC4(udev, M9206_FW, 0x0, 0x0, read, 1)) != 0)
		goto done;
	FUNC0("%x\n", read[0]);

	for (pass = 0; pass < 2; pass++) {
		for (i = 0; i + (sizeof(u16) * 3) < fw->size;) {
			value = FUNC1(fw->data + i);
			i += sizeof(u16);

			index = FUNC1(fw->data + i);
			i += sizeof(u16);

			size = FUNC1(fw->data + i);
			i += sizeof(u16);

			if (pass == 1) {
				/* Will stall if using fw->data ... */
				FUNC6(buff, fw->data + i, size);

				ret = FUNC8(udev, FUNC9(udev,0),
						      M9206_FW,
						      USB_TYPE_VENDOR | USB_DIR_OUT,
						      value, index, buff, size, 20);
				if (ret != size) {
					FUNC0("error while uploading fw!\n");
					ret = -EIO;
					goto done;
				}
				FUNC7(3);
			}
			i += size;
		}
		if (i != fw->size) {
			FUNC0("bad firmware file!\n");
			ret = -EINVAL;
			goto done;
		}
	}

	FUNC7(36);

	/* m920x will disconnect itself from the bus after this. */
	(void) FUNC5(udev, M9206_CORE, 0x01, M9206_FW_GO);
	FUNC0("firmware uploaded!\n");

 done:
	FUNC2(read);
	FUNC2(buff);

	return ret;
}