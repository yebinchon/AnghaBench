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
struct usbnet {int dummy; } ;

/* Variables and functions */
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int,int,int,void*,int) ; 

__attribute__((used)) static void FUNC2(struct usbnet *dev, u8 cmd, u16 value,
				    u16 index, u16 size, void *data)
{
	u16 buf;

	if (2 == size) {
		buf = *((u16 *)data);
		FUNC0(&buf);
		FUNC1(dev, cmd, USB_DIR_OUT | USB_TYPE_VENDOR |
				       USB_RECIP_DEVICE, value, index, &buf,
				       size);
	} else {
		FUNC1(dev, cmd, USB_DIR_OUT | USB_TYPE_VENDOR |
				       USB_RECIP_DEVICE, value, index, data,
				       size);
	}
}