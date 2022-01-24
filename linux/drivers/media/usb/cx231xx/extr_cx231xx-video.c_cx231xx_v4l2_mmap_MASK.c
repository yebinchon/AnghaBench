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
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int /*<<< orphan*/  vb_vidq; struct cx231xx* dev; } ;
struct cx231xx {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned long,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct cx231xx_fh*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC7(struct file *filp, struct vm_area_struct *vma)
{
	struct cx231xx_fh *fh = filp->private_data;
	struct cx231xx *dev = fh->dev;
	int rc;

	rc = FUNC0(dev);
	if (rc < 0)
		return rc;

	rc = FUNC4(fh);

	if (FUNC5(rc < 0))
		return rc;

	if (FUNC2(&dev->lock))
		return -ERESTARTSYS;
	rc = FUNC6(&fh->vb_vidq, vma);
	FUNC3(&dev->lock);

	FUNC1("vma start=0x%08lx, size=%ld, ret=%d\n",
			 (unsigned long)vma->vm_start,
			 (unsigned long)vma->vm_end -
			 (unsigned long)vma->vm_start, rc);

	return rc;
}