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
typedef  size_t u16 ;
struct urb {int dummy; } ;
struct dln2_rx_context {int in_use; int /*<<< orphan*/  done; struct urb* urb; } ;
struct dln2_mod_rx_slots {int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; struct dln2_rx_context* slots; int /*<<< orphan*/  bmap; } ;
struct dln2_dev {TYPE_1__* interface; struct dln2_mod_rx_slots* mod_rx_slots; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct dln2_dev *dln2, u16 handle, int slot)
{
	struct dln2_mod_rx_slots *rxs;
	struct urb *urb = NULL;
	unsigned long flags;
	struct dln2_rx_context *rxc;

	rxs = &dln2->mod_rx_slots[handle];

	FUNC3(&rxs->lock, flags);

	FUNC0(slot, rxs->bmap);

	rxc = &rxs->slots[slot];
	rxc->in_use = false;
	urb = rxc->urb;
	rxc->urb = NULL;
	FUNC2(&rxc->done);

	FUNC4(&rxs->lock, flags);

	if (urb) {
		int err;
		struct device *dev = &dln2->interface->dev;

		err = FUNC5(urb, GFP_KERNEL);
		if (err < 0)
			FUNC1(dev, "failed to resubmit RX URB: %d\n", err);
	}

	FUNC6(&rxs->wq);
}