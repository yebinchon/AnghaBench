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
struct cx88_core {struct cx8802_dev* dvbdev; } ;
struct cx8802_driver {struct cx88_core* core; } ;
struct TYPE_2__ {int /*<<< orphan*/  hdl; } ;
struct cx8802_dev {TYPE_1__ cxhdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct cx8802_driver *drv)
{
	struct cx88_core *core = drv->core;
	struct cx8802_dev *dev = core->dvbdev;

	/* blackbird */
	FUNC0(drv->core->dvbdev);
	FUNC1(&dev->cxhdl.hdl);

	return 0;
}