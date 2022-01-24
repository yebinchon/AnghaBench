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
struct usb_device {int dummy; } ;
struct at76_command {int /*<<< orphan*/  data; int /*<<< orphan*/  size; scalar_t__ reserved; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct at76_command*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct at76_command*) ; 
 struct at76_command* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct at76_command*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_device *udev, u8 cmd, void *buf,
				 int buf_size)
{
	int ret;
	struct at76_command *cmd_buf = FUNC4(sizeof(struct at76_command) +
					       buf_size, GFP_KERNEL);

	if (!cmd_buf)
		return -ENOMEM;

	cmd_buf->cmd = cmd;
	cmd_buf->reserved = 0;
	cmd_buf->size = FUNC2(buf_size);
	FUNC5(cmd_buf->data, buf, buf_size);

	FUNC0(DBG_CMD, cmd_buf, sizeof(struct at76_command) + buf_size,
		      "issuing command %s (0x%02x)",
		      FUNC1(cmd), cmd);

	ret = FUNC6(udev, FUNC7(udev, 0), 0x0e,
			      USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
			      0, 0, cmd_buf,
			      sizeof(struct at76_command) + buf_size,
			      USB_CTRL_GET_TIMEOUT);
	FUNC3(cmd_buf);
	return ret;
}