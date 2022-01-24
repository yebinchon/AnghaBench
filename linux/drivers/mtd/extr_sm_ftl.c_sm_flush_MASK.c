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
struct sm_ftl {int /*<<< orphan*/  mutex; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sm_ftl*) ; 

__attribute__((used)) static int FUNC3(struct mtd_blktrans_dev *dev)
{
	struct sm_ftl *ftl = dev->priv;
	int retval;

	FUNC0(&ftl->mutex);
	retval =  FUNC2(ftl);
	FUNC1(&ftl->mutex);
	return retval;
}