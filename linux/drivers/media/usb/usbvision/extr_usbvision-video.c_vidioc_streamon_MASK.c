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
struct usb_usbvision {int /*<<< orphan*/  streaming; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  stream_on ; 
 int /*<<< orphan*/  video ; 
 struct usb_usbvision* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv, enum v4l2_buf_type i)
{
	struct usb_usbvision *usbvision = FUNC1(file);

	usbvision->streaming = stream_on;
	FUNC0(usbvision, video, s_stream, 1);

	return 0;
}