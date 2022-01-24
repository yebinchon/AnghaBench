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
struct usb_usbvision {unsigned int video_inputs; int /*<<< orphan*/  curheight; int /*<<< orphan*/  curwidth; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_usbvision* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, unsigned int input)
{
	struct usb_usbvision *usbvision = FUNC3(file);

	if (input >= usbvision->video_inputs)
		return -EINVAL;

	FUNC0(usbvision, input);
	FUNC1(usbvision);
	FUNC2(usbvision,
			     usbvision->curwidth,
			     usbvision->curheight);
	return 0;
}