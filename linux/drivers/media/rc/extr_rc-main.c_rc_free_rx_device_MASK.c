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
struct rc_dev {int /*<<< orphan*/  rc_map; int /*<<< orphan*/ * input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rc_dev *dev)
{
	if (!dev)
		return;

	if (dev->input_dev) {
		FUNC0(dev->input_dev);
		dev->input_dev = NULL;
	}

	FUNC1(&dev->rc_map);
}