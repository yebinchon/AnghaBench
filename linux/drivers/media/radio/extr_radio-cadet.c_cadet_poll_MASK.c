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
struct file {int dummy; } ;
struct cadet {scalar_t__ rdsstat; int /*<<< orphan*/  lock; int /*<<< orphan*/  read_queue; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 scalar_t__ FUNC0 (struct cadet*) ; 
 int /*<<< orphan*/  FUNC1 (struct cadet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int FUNC6 (struct file*,struct poll_table_struct*) ; 
 struct cadet* FUNC7 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC8(struct file *file, struct poll_table_struct *wait)
{
	struct cadet *dev = FUNC7(file);
	__poll_t req_events = FUNC4(wait);
	__poll_t res = FUNC6(file, wait);

	FUNC5(file, &dev->read_queue, wait);
	if (dev->rdsstat == 0 && (req_events & (EPOLLIN | EPOLLRDNORM))) {
		FUNC2(&dev->lock);
		if (dev->rdsstat == 0)
			FUNC1(dev);
		FUNC3(&dev->lock);
	}
	if (FUNC0(dev))
		res |= EPOLLIN | EPOLLRDNORM;
	return res;
}