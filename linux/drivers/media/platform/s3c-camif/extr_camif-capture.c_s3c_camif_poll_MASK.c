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
struct poll_table_struct {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct camif_vp {scalar_t__ owner; int /*<<< orphan*/  vb_queue; struct camif_dev* camif; } ;
struct camif_dev {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct file*,struct poll_table_struct*) ; 
 struct camif_vp* FUNC3 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *file,
				   struct poll_table_struct *wait)
{
	struct camif_vp *vp = FUNC3(file);
	struct camif_dev *camif = vp->camif;
	__poll_t ret;

	FUNC0(&camif->lock);
	if (vp->owner && vp->owner != file->private_data)
		ret = EPOLLERR;
	else
		ret = FUNC2(&vp->vb_queue, file, wait);

	FUNC1(&camif->lock);
	return ret;
}