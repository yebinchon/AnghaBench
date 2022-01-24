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
typedef  int u32 ;
struct rc_dev {int timeout; struct loopback_dev* priv; } ;
struct loopback_dev {scalar_t__ txcarrier; scalar_t__ rxcarriermin; scalar_t__ rxcarriermax; int txmask; scalar_t__ learning; } ;
struct ir_raw_event {int pulse; unsigned int duration; } ;

/* Variables and functions */
 int RXMASK_LEARNING ; 
 int RXMASK_REGULAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rc_dev*,struct ir_raw_event*) ; 

__attribute__((used)) static int FUNC3(struct rc_dev *dev, unsigned *txbuf, unsigned count)
{
	struct loopback_dev *lodev = dev->priv;
	u32 rxmask;
	unsigned i;
	struct ir_raw_event rawir = {};

	if (lodev->txcarrier < lodev->rxcarriermin ||
	    lodev->txcarrier > lodev->rxcarriermax) {
		FUNC0("ignoring tx, carrier out of range\n");
		goto out;
	}

	if (lodev->learning)
		rxmask = RXMASK_LEARNING;
	else
		rxmask = RXMASK_REGULAR;

	if (!(rxmask & lodev->txmask)) {
		FUNC0("ignoring tx, rx mask mismatch\n");
		goto out;
	}

	for (i = 0; i < count; i++) {
		rawir.pulse = i % 2 ? false : true;
		rawir.duration = txbuf[i] * 1000;
		if (rawir.duration)
			FUNC2(dev, &rawir);
	}

	/* Fake a silence long enough to cause us to go idle */
	rawir.pulse = false;
	rawir.duration = dev->timeout;
	FUNC2(dev, &rawir);

	FUNC1(dev);

out:
	return count;
}