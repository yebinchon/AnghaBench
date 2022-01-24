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
struct TYPE_2__ {int /*<<< orphan*/  length; } ;
struct tmio_mmc_host {int /*<<< orphan*/  sg_orig; TYPE_1__ bounce_sg; int /*<<< orphan*/  bounce_buf; TYPE_1__* sg_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*,void*) ; 

__attribute__((used)) static void FUNC3(struct tmio_mmc_host *host)
{
	if (host->sg_ptr == &host->bounce_sg) {
		unsigned long flags;
		void *sg_vaddr = FUNC1(host->sg_orig, &flags);

		FUNC0(sg_vaddr, host->bounce_buf, host->bounce_sg.length);
		FUNC2(host->sg_orig, &flags, sg_vaddr);
	}
}