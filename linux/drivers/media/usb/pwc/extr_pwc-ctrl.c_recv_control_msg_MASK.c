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
typedef  int /*<<< orphan*/  u16 ;
struct pwc_device {int /*<<< orphan*/  ctrl_buf; int /*<<< orphan*/  vcinterface; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pwc_device *pdev,
	u8 request, u16 value, int recv_count)
{
	int rc;

	rc = FUNC1(pdev->udev, FUNC2(pdev->udev, 0),
		request,
		USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
		value, pdev->vcinterface,
		pdev->ctrl_buf, recv_count, USB_CTRL_GET_TIMEOUT);
	if (rc < 0)
		FUNC0("recv_control_msg error %d req %02x val %04x\n",
			  rc, request, value);
	return rc;
}