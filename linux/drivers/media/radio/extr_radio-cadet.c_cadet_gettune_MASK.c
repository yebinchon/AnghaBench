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
struct cadet {int tunestat; scalar_t__ io; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static unsigned FUNC2(struct cadet *dev)
{
	int curvol, i;
	unsigned fifo = 0;

	/*
	 * Prepare for read
	 */

	FUNC1(7, dev->io);       /* Select tuner control */
	curvol = FUNC0(dev->io + 1); /* Save current volume/mute setting */
	FUNC1(0x00, dev->io + 1);  /* Ensure WRITE-ENABLE is LOW */
	dev->tunestat = 0xffff;

	/*
	 * Read the shift register
	 */
	for (i = 0; i < 25; i++) {
		fifo = (fifo << 1) | ((FUNC0(dev->io + 1) >> 7) & 0x01);
		if (i < 24) {
			FUNC1(0x01, dev->io + 1);
			dev->tunestat &= FUNC0(dev->io + 1);
			FUNC1(0x00, dev->io + 1);
		}
	}

	/*
	 * Restore volume/mute setting
	 */
	FUNC1(curvol, dev->io + 1);
	return fifo;
}