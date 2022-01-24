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
struct tm6000_core {int /*<<< orphan*/  radio_dev; int /*<<< orphan*/  vfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct tm6000_core *dev)
{
	FUNC1(&dev->vfd);

	/* if URB buffers are still allocated free them now */
	FUNC0(dev);

	FUNC1(&dev->radio_dev);
	return 0;
}