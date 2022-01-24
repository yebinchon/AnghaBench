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
struct vimc_device {int /*<<< orphan*/ * subdevs; TYPE_1__* pipe_cfg; } ;
struct TYPE_2__ {unsigned int num_ents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct vimc_device *vimc)
{
	unsigned int i;

	for (i = 0; i < vimc->pipe_cfg->num_ents; i++)
		FUNC0(vimc->subdevs[i]);
}