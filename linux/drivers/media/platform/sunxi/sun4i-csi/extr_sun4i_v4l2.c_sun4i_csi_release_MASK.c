#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct sun4i_csi {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__ vdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sun4i_csi* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct sun4i_csi *csi = FUNC5(file);

	FUNC0(&csi->lock);

	FUNC3(file);
	FUNC4(&csi->vdev.entity, 0);
	FUNC2(csi->dev);

	FUNC1(&csi->lock);

	return 0;
}