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
struct qede_dev {TYPE_1__* arfs; } ;
struct TYPE_2__ {int filter_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 

int FUNC2(struct qede_dev *edev)
{
	int count = 0;

	FUNC0(edev);

	if (!edev->arfs)
		goto unlock;

	count = edev->arfs->filter_count;

unlock:
	FUNC1(edev);
	return count;
}