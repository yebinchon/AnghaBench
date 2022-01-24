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
struct msi2500_dev {scalar_t__* urbs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAX_ISO_BUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct msi2500_dev *dev)
{
	int i;

	FUNC0(dev->dev, "\n");

	/* Unlinking ISOC buffers one by one */
	for (i = 0; i < MAX_ISO_BUFS; i++) {
		if (dev->urbs[i]) {
			FUNC0(dev->dev, "Unlinking URB %p\n", dev->urbs[i]);
			FUNC1(dev->urbs[i]);
		}
	}
}