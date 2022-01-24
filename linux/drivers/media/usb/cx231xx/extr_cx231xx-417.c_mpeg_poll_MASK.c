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
struct poll_table_struct {int dummy; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;
struct cx231xx_fh {int /*<<< orphan*/  vidq; TYPE_1__ fh; struct cx231xx* dev; } ;
struct cx231xx {int /*<<< orphan*/  lock; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLPRI ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t FUNC6(struct file *file,
	struct poll_table_struct *wait)
{
	__poll_t req_events = FUNC2(wait);
	struct cx231xx_fh *fh = file->private_data;
	struct cx231xx *dev = fh->dev;
	__poll_t res = 0;

	if (FUNC4(&fh->fh))
		res |= EPOLLPRI;
	else
		FUNC3(file, &fh->fh.wait, wait);

	if (!(req_events & (EPOLLIN | EPOLLRDNORM)))
		return res;

	FUNC0(&dev->lock);
	res |= FUNC5(file, &fh->vidq, wait);
	FUNC1(&dev->lock);
	return res;
}