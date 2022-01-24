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
struct isp_prev_device {int /*<<< orphan*/  wait; } ;
struct isp_device {struct isp_prev_device isp_prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct isp_prev_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_prev_device*) ; 

int FUNC3(struct isp_device *isp)
{
	struct isp_prev_device *prev = &isp->isp_prev;

	FUNC0(&prev->wait);

	FUNC2(prev);

	return FUNC1(prev);
}