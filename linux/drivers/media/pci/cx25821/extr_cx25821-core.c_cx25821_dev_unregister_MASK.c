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
struct cx25821_dev {int /*<<< orphan*/ * i2c_bus; int /*<<< orphan*/  pci; int /*<<< orphan*/  base_io_addr; } ;

/* Variables and functions */
 int MAX_VID_CAP_CHANNEL_NUM ; 
 int SRAM_CH08 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cx25821_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx25821_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct cx25821_dev *dev)
{
	int i;

	if (!dev->base_io_addr)
		return;

	FUNC4(dev->base_io_addr, FUNC3(dev->pci, 0));

	for (i = 0; i < MAX_VID_CAP_CHANNEL_NUM - 1; i++) {
		if (i == SRAM_CH08) /* audio channel */
			continue;
		/*
		 * TODO: enable when video output is properly
		 * supported.
		if (i == SRAM_CH09 || i == SRAM_CH10)
			cx25821_free_mem_upstream(&dev->channels[i]);
		 */
		FUNC2(dev, i);
	}

	FUNC0(&dev->i2c_bus[0]);
	FUNC1(dev);
}