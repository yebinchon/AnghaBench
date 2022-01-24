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
struct b43_wldev {TYPE_1__* dev; } ;
struct b43_pio_rxqueue {scalar_t__ mmio_base; int /*<<< orphan*/  rev; struct b43_wldev* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  core_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,unsigned int,int) ; 
 scalar_t__ FUNC1 (struct b43_wldev*,unsigned int) ; 
 struct b43_pio_rxqueue* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct b43_wldev*) ; 

__attribute__((used)) static struct b43_pio_rxqueue *FUNC4(struct b43_wldev *dev,
						     unsigned int index)
{
	struct b43_pio_rxqueue *q;

	q = FUNC2(sizeof(*q), GFP_KERNEL);
	if (!q)
		return NULL;
	q->dev = dev;
	q->rev = dev->dev->core_rev;
	q->mmio_base = FUNC1(dev, index) +
		       FUNC3(dev);

	/* Enable Direct FIFO RX (PIO) on the engine. */
	FUNC0(dev, index, 1);

	return q;
}