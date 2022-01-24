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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct usb_usbvision {int /*<<< orphan*/  ctl_input; int /*<<< orphan*/  tvnorm_id; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC1 (struct usb_usbvision*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 
 struct usb_usbvision* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, v4l2_std_id id)
{
	struct usb_usbvision *usbvision = FUNC2(file);

	usbvision->tvnorm_id = id;

	FUNC0(usbvision, video, s_std, usbvision->tvnorm_id);
	/* propagate the change to the decoder */
	FUNC1(usbvision, usbvision->ctl_input);

	return 0;
}