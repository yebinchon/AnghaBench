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
struct nxp_spifi {int memory_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct nxp_spifi*) ; 

__attribute__((used)) static int FUNC2(struct nxp_spifi *spifi)
{
	int ret;

	if (!spifi->memory_mode)
		return 0;

	ret = FUNC1(spifi);
	if (ret)
		FUNC0(spifi->dev, "unable to enter command mode\n");
	else
		spifi->memory_mode = false;

	return ret;
}