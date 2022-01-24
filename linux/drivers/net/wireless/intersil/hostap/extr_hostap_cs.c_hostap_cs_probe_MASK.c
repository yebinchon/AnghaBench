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
struct pcmcia_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EXTRA ; 
 int /*<<< orphan*/  DEBUG_HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  dev_info ; 
 int FUNC1 (struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC2(struct pcmcia_device *p_dev)
{
	int ret;

	FUNC0(DEBUG_HW, "%s: setting Vcc=33 (constant)\n", dev_info);

	ret = FUNC1(p_dev);
	if (ret) {
		FUNC0(DEBUG_EXTRA, "prism2_config() failed\n");
	}

	return ret;
}