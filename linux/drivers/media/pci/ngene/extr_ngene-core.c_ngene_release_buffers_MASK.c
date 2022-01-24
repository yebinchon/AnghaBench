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
struct ngene {struct ngene* vin_buf; struct ngene* ain_buf; struct ngene* tsin_buf; struct ngene* tsout_buf; scalar_t__ iomem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ngene*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ngene*) ; 

__attribute__((used)) static void FUNC3(struct ngene *dev)
{
	if (dev->iomem)
		FUNC1(dev->iomem);
	FUNC0(dev);
	FUNC2(dev->tsout_buf);
	FUNC2(dev->tsin_buf);
	FUNC2(dev->ain_buf);
	FUNC2(dev->vin_buf);
	FUNC2(dev);
}