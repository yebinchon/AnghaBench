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
struct list_head {int dummy; } ;
struct fdp1_job {int /*<<< orphan*/  list; } ;
struct fdp1_dev {int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct fdp1_dev *fdp1,
			 struct list_head *list,
			 struct fdp1_job *job)
{
	unsigned long flags;

	FUNC1(&fdp1->irqlock, flags);
	FUNC0(&job->list, list);
	FUNC2(&fdp1->irqlock, flags);
}