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
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct file *filp)
{
	struct cx231xx_fh *fh = filp->private_data;
	struct cx231xx *dev = fh->dev;
	int rc;

	FUNC1(&dev->lock);
	rc = FUNC0(filp);
	FUNC2(&dev->lock);
	return rc;
}