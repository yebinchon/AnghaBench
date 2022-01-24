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
struct stk_camera {int /*<<< orphan*/  sio_full; int /*<<< orphan*/  wait_frame; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ *) ; 
 struct stk_camera* FUNC4 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *fp, poll_table *wait)
{
	struct stk_camera *dev = FUNC4(fp);
	__poll_t res = FUNC3(fp, wait);

	FUNC2(fp, &dev->wait_frame, wait);

	if (!FUNC0(dev))
		return EPOLLERR;

	if (!FUNC1(&dev->sio_full))
		return res | EPOLLIN | EPOLLRDNORM;

	return res;
}