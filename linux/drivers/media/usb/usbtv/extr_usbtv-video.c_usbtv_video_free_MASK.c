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
struct usbtv {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  vb2q_lock; int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usbtv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct usbtv *usbtv)
{
	FUNC0(&usbtv->vb2q_lock);
	FUNC0(&usbtv->v4l2_lock);

	FUNC2(usbtv);
	FUNC5(&usbtv->vdev);
	FUNC3(&usbtv->v4l2_dev);

	FUNC1(&usbtv->v4l2_lock);
	FUNC1(&usbtv->vb2q_lock);

	FUNC4(&usbtv->v4l2_dev);
}