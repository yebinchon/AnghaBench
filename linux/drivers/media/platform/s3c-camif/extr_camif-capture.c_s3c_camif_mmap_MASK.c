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
struct file {scalar_t__ private_data; } ;
struct camif_vp {scalar_t__ owner; int /*<<< orphan*/  vb_queue; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 
 struct camif_vp* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, struct vm_area_struct *vma)
{
	struct camif_vp *vp = FUNC1(file);
	int ret;

	if (vp->owner && vp->owner != file->private_data)
		ret = -EBUSY;
	else
		ret = FUNC0(&vp->vb_queue, vma);

	return ret;
}