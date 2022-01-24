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
struct file {int dummy; } ;
struct camif_vp {int /*<<< orphan*/  owner; int /*<<< orphan*/  state; int /*<<< orphan*/  id; struct camif_dev* camif; } ;
struct camif_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct camif_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 struct camif_vp* FUNC9 (struct file*) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct camif_vp *vp = FUNC9(file);
	struct camif_dev *camif = vp->camif;
	int ret;

	FUNC4("[vp%d] state: %#x,  owner: %p, pid: %d\n", vp->id,
		 vp->state, vp->owner, FUNC6(current));

	if (FUNC0(&camif->lock))
		return -ERESTARTSYS;

	ret = FUNC7(file);
	if (ret < 0)
		goto unlock;

	ret = FUNC2(camif->dev);
	if (ret < 0)
		goto err_pm;

	ret = FUNC5(camif, 1);
	if (!ret)
		goto unlock;

	FUNC3(camif->dev);
err_pm:
	FUNC8(file);
unlock:
	FUNC1(&camif->lock);
	return ret;
}