#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct firmware {int* data; int size; } ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LOAD_BCM4500 ; 
 int /*<<< orphan*/  bcm4500_firmware ; 
 scalar_t__ FUNC0 (struct dvb_usb_device*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dvb_usb_device *d)
{
	int ret;
	const struct firmware *fw = NULL;
	const u8 *ptr;
	u8 *buf;
	if ((ret = FUNC8(&fw, bcm4500_firmware,
					&d->udev->dev)) != 0) {
		FUNC1("did not find the bcm4500 firmware file '%s' (status %d). You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware",
			bcm4500_firmware,ret);
		return ret;
	}

	ret = -EINVAL;

	if (FUNC2(d, LOAD_BCM4500,1,0,NULL, 0))
		goto out_rel_fw;

	FUNC3("downloading bcm4500 firmware from file '%s'",bcm4500_firmware);

	ptr = fw->data;
	buf = FUNC5(64, GFP_KERNEL);
	if (!buf) {
		ret = -ENOMEM;
		goto out_rel_fw;
	}

	while (ptr[0] != 0xff) {
		u16 buflen = ptr[0] + 4;
		if (ptr + buflen >= fw->data + fw->size) {
			FUNC1("failed to load bcm4500 firmware.");
			goto out_free;
		}
		if (buflen > 64) {
			FUNC1("firmware chunk size bigger than 64 bytes.");
			goto out_free;
		}

		FUNC6(buf, ptr, buflen);
		if (FUNC0(d, buf, buflen)) {
			FUNC1("failed to load bcm4500 firmware.");
			goto out_free;
		}
		ptr += buflen;
	}

	ret = 0;

out_free:
	FUNC4(buf);
out_rel_fw:
	FUNC7(fw);

	return ret;
}