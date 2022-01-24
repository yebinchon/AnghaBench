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
struct cio2_device {int /*<<< orphan*/ * queue; } ;

/* Variables and functions */
 unsigned int CIO2_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct cio2_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct cio2_device *cio2)
{
	unsigned int i;

	for (i = 0; i < CIO2_QUEUES; i++)
		FUNC0(cio2, &cio2->queue[i]);
}