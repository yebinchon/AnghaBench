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
struct pwc_device {int /*<<< orphan*/  cmd_buf; int /*<<< orphan*/  ctrl_buf; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  SET_EP_STREAM_CTL ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  VIDEO_OUTPUT_CONTROL_FORMATTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct pwc_device *pdev,
	int index, const unsigned char *buf, int buflen)
{
	int rc;

	FUNC1(pdev->ctrl_buf, buf, buflen);

	rc = FUNC2(pdev->udev, FUNC3(pdev->udev, 0),
			SET_EP_STREAM_CTL,
			USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			VIDEO_OUTPUT_CONTROL_FORMATTER, index,
			pdev->ctrl_buf, buflen, USB_CTRL_SET_TIMEOUT);
	if (rc >= 0)
		FUNC1(pdev->cmd_buf, buf, buflen);
	else
		FUNC0("send_video_command error %d\n", rc);

	return rc;
}