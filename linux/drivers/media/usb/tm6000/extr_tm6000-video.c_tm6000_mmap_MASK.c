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
struct tm6000_fh {int /*<<< orphan*/  vb_vidq; struct tm6000_core* dev; } ;
struct tm6000_core {int /*<<< orphan*/  lock; } ;
struct file {struct tm6000_fh* private_data; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(struct file *file, struct vm_area_struct * vma)
{
	struct tm6000_fh *fh = file->private_data;
	struct tm6000_core *dev = fh->dev;
	int res;

	if (FUNC0(&dev->lock))
		return -ERESTARTSYS;
	res = FUNC2(&fh->vb_vidq, vma);
	FUNC1(&dev->lock);
	return res;
}