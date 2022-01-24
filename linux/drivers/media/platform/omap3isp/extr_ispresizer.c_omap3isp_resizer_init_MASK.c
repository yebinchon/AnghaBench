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
struct isp_res_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; } ;
struct isp_device {struct isp_res_device isp_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct isp_res_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct isp_device *isp)
{
	struct isp_res_device *res = &isp->isp_res;

	FUNC1(&res->wait);
	FUNC0(&res->stopping, 0);
	FUNC3(&res->lock);

	return FUNC2(res);
}