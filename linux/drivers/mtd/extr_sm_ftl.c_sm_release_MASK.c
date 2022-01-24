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
struct sm_ftl {int /*<<< orphan*/  mutex; int /*<<< orphan*/  flush_work; int /*<<< orphan*/  timer; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sm_ftl*) ; 

__attribute__((used)) static void FUNC5(struct mtd_blktrans_dev *dev)
{
	struct sm_ftl *ftl = dev->priv;

	FUNC2(&ftl->mutex);
	FUNC1(&ftl->timer);
	FUNC0(&ftl->flush_work);
	FUNC4(ftl);
	FUNC3(&ftl->mutex);
}