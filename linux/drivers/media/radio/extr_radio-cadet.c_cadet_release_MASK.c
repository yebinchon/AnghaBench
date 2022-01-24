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
struct cadet {int /*<<< orphan*/  lock; scalar_t__ rdsstat; int /*<<< orphan*/  readtimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 struct cadet* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct cadet *dev = FUNC5(file);

	FUNC1(&dev->lock);
	if (FUNC3(file) && dev->rdsstat) {
		FUNC0(&dev->readtimer);
		dev->rdsstat = 0;
	}
	FUNC4(file);
	FUNC2(&dev->lock);
	return 0;
}