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
struct kaweth_device {int* firmware_buf; TYPE_2__* dev; int /*<<< orphan*/  net; TYPE_1__* intf; } ;
struct firmware {int size; int /*<<< orphan*/  data; } ;
typedef  void* __u8 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  KAWETH_COMMAND_SCAN ; 
 int /*<<< orphan*/  KAWETH_CONTROL_TIMEOUT ; 
 int KAWETH_FIRMWARE_BUF_SIZE ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct kaweth_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kaweth_device *kaweth,
				    const char *fwname,
				    __u8 interrupt,
				    __u8 type)
{
	const struct firmware *fw;
	int data_len;
	int ret;

	ret = FUNC5(&fw, fwname, &kaweth->dev->dev);
	if (ret) {
		FUNC0(&kaweth->intf->dev, "Firmware request failed\n");
		return ret;
	}

	if (fw->size > KAWETH_FIRMWARE_BUF_SIZE) {
		FUNC0(&kaweth->intf->dev, "Firmware too big: %zu\n",
			fw->size);
		FUNC4(fw);
		return -ENOSPC;
	}
	data_len = fw->size;
	FUNC2(kaweth->firmware_buf, fw->data, fw->size);

	FUNC4(fw);

	kaweth->firmware_buf[2] = (data_len & 0xFF) - 7;
	kaweth->firmware_buf[3] = data_len >> 8;
	kaweth->firmware_buf[4] = type;
	kaweth->firmware_buf[5] = interrupt;

	FUNC3(kaweth->net, "High: %i, Low:%i\n", kaweth->firmware_buf[3],
		   kaweth->firmware_buf[2]);

	FUNC3(kaweth->net,
		   "Downloading firmware at %p to kaweth device at %p\n",
		   kaweth->firmware_buf, kaweth);
	FUNC3(kaweth->net, "Firmware length: %d\n", data_len);

	return FUNC1(kaweth,
		              FUNC6(kaweth->dev, 0),
			      KAWETH_COMMAND_SCAN,
			      USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
			      0,
			      0,
			      (void *)kaweth->firmware_buf,
			      data_len,
			      KAWETH_CONTROL_TIMEOUT);
}