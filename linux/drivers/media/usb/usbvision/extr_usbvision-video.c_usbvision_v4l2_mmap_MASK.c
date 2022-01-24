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
struct vm_area_struct {int dummy; } ;
struct usb_usbvision {int /*<<< orphan*/  v4l2_lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct file*,struct vm_area_struct*) ; 
 struct usb_usbvision* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, struct vm_area_struct *vma)
{
	struct usb_usbvision *usbvision = FUNC3(file);
	int res;

	if (FUNC0(&usbvision->v4l2_lock))
		return -ERESTARTSYS;
	res = FUNC2(file, vma);
	FUNC1(&usbvision->v4l2_lock);
	return res;
}