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
struct ucan_priv {int /*<<< orphan*/  ctl_msg_buffer; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCAN_USB_CTL_PIPE_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ucan_priv *up,
				  u8 cmd, u16 subcmd, u16 datalen)
{
	return FUNC0(up->udev,
			       FUNC1(up->udev, 0),
			       cmd,
			       USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			       subcmd,
			       0,
			       up->ctl_msg_buffer,
			       datalen,
			       UCAN_USB_CTL_PIPE_TIMEOUT);
}