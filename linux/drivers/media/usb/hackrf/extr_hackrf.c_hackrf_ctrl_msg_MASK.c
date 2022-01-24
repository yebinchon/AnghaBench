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
typedef  int /*<<< orphan*/  u16 ;
struct hackrf_dev {int* buf; int /*<<< orphan*/  dev; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
#define  CMD_AMP_ENABLE 137 
#define  CMD_BASEBAND_FILTER_BANDWIDTH_SET 136 
#define  CMD_BOARD_ID_READ 135 
#define  CMD_SAMPLE_RATE_SET 134 
#define  CMD_SET_FREQ 133 
#define  CMD_SET_LNA_GAIN 132 
#define  CMD_SET_TRANSCEIVER_MODE 131 
#define  CMD_SET_TXVGA_GAIN 130 
#define  CMD_SET_VGA_GAIN 129 
#define  CMD_VERSION_STRING_READ 128 
 int EINVAL ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hackrf_dev *dev, u8 request, u16 value,
		u16 index, u8 *data, u16 size)
{
	int ret;
	unsigned int pipe;
	u8 requesttype;

	switch (request) {
	case CMD_SET_TRANSCEIVER_MODE:
	case CMD_SET_FREQ:
	case CMD_AMP_ENABLE:
	case CMD_SAMPLE_RATE_SET:
	case CMD_BASEBAND_FILTER_BANDWIDTH_SET:
		pipe = FUNC5(dev->udev, 0);
		requesttype = (USB_TYPE_VENDOR | USB_DIR_OUT);
		break;
	case CMD_BOARD_ID_READ:
	case CMD_VERSION_STRING_READ:
	case CMD_SET_LNA_GAIN:
	case CMD_SET_VGA_GAIN:
	case CMD_SET_TXVGA_GAIN:
		pipe = FUNC4(dev->udev, 0);
		requesttype = (USB_TYPE_VENDOR | USB_DIR_IN);
		break;
	default:
		FUNC0(dev->dev, "Unknown command %02x\n", request);
		ret = -EINVAL;
		goto err;
	}

	/* write request */
	if (!(requesttype & USB_DIR_IN))
		FUNC2(dev->buf, data, size);

	ret = FUNC3(dev->udev, pipe, request, requesttype, value,
			index, dev->buf, size, 1000);
	FUNC1(dev->dev, request, requesttype, value,
			index, dev->buf, size);
	if (ret < 0) {
		FUNC0(dev->dev, "usb_control_msg() failed %d request %02x\n",
				ret, request);
		goto err;
	}

	/* read request */
	if (requesttype & USB_DIR_IN)
		FUNC2(data, dev->buf, size);

	return 0;
err:
	return ret;
}