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
struct qede_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*) ; 
 int /*<<< orphan*/  qedr_dev_list_lock ; 

__attribute__((used)) static void FUNC4(struct qede_dev *edev)
{
	if (!FUNC3(edev))
		return;

	FUNC1(&qedr_dev_list_lock);
	FUNC0(edev);
	FUNC2(&qedr_dev_list_lock);
}