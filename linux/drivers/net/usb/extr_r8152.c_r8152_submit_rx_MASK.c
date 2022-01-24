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
typedef  int /*<<< orphan*/  usb_complete_t ;
struct urb {scalar_t__ actual_length; } ;
struct rx_agg {int /*<<< orphan*/  list; struct urb* urb; int /*<<< orphan*/  buffer; } ;
struct r8152 {int /*<<< orphan*/  napi; int /*<<< orphan*/  netdev; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_done; int /*<<< orphan*/  rx_buf_sz; int /*<<< orphan*/  udev; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 int /*<<< orphan*/  WORK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct rx_agg*,int) ; 
 scalar_t__ read_bulk_callback ; 
 int /*<<< orphan*/  FUNC5 (struct r8152*) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rx_agg*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC12(struct r8152 *tp, struct rx_agg *agg, gfp_t mem_flags)
{
	int ret;

	/* The rx would be stopped, so skip submitting */
	if (FUNC8(RTL8152_UNPLUG, &tp->flags) ||
	    !FUNC8(WORK_ENABLE, &tp->flags) || !FUNC2(tp->netdev))
		return 0;

	FUNC9(agg->urb, tp->udev, FUNC10(tp->udev, 1),
			  agg->buffer, tp->rx_buf_sz,
			  (usb_complete_t)read_bulk_callback, agg);

	ret = FUNC11(agg->urb, mem_flags);
	if (ret == -ENODEV) {
		FUNC5(tp);
		FUNC3(tp->netdev);
	} else if (ret) {
		struct urb *urb = agg->urb;
		unsigned long flags;

		urb->actual_length = 0;
		FUNC6(&tp->rx_lock, flags);
		FUNC0(&agg->list, &tp->rx_done);
		FUNC7(&tp->rx_lock, flags);

		FUNC4(tp, rx_err, tp->netdev,
			  "Couldn't submit rx[%p], ret = %d\n", agg, ret);

		FUNC1(&tp->napi);
	}

	return ret;
}