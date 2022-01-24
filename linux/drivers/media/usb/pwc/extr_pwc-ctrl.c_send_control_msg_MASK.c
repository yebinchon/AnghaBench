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
struct pwc_device {int /*<<< orphan*/  vcinterface; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct pwc_device *pdev,
	u8 request, u16 value, void *buf, int buflen)
{
	return FUNC0(pdev->udev, FUNC1(pdev->udev, 0),
			request,
			USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			value, pdev->vcinterface,
			buf, buflen, USB_CTRL_SET_TIMEOUT);
}