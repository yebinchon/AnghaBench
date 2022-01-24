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
struct file {scalar_t__ private_data; } ;
struct camif_vp {scalar_t__ owner; int /*<<< orphan*/  vb_queue; int /*<<< orphan*/  state; int /*<<< orphan*/  id; struct camif_dev* camif; } ;
struct camif_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct camif_vp*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct camif_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct camif_vp* FUNC9 (struct file*) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct camif_vp *vp = FUNC9(file);
	struct camif_dev *camif = vp->camif;
	int ret;

	FUNC4("[vp%d] state: %#x, owner: %p, pid: %d\n", vp->id,
		 vp->state, vp->owner, FUNC6(current));

	FUNC1(&camif->lock);

	if (vp->owner == file->private_data) {
		FUNC0(vp);
		FUNC8(&vp->vb_queue);
		vp->owner = NULL;
	}

	FUNC5(camif, 0);

	FUNC3(camif->dev);
	ret = FUNC7(file);

	FUNC2(&camif->lock);
	return ret;
}