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
struct sge_params {int /*<<< orphan*/  large_buf_capacity; } ;
struct sge {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct sge*,struct sge_params*) ; 
 scalar_t__ FUNC1 (struct sge*,struct sge_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct sge*,struct sge_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct sge*) ; 
 int /*<<< orphan*/  FUNC4 (struct sge*) ; 

int FUNC5(struct sge *sge, struct sge_params *p)
{
	if (FUNC0(sge, p))
		return -ENOMEM;
	if (FUNC1(sge, p)) {
		FUNC3(sge);
		return -ENOMEM;
	}
	FUNC2(sge, p);

	/*
	 * Now that we have sized the free lists calculate the payload
	 * capacity of the large buffers.  Other parts of the driver use
	 * this to set the max offload coalescing size so that RX packets
	 * do not overflow our large buffers.
	 */
	p->large_buf_capacity = FUNC4(sge);
	return 0;
}