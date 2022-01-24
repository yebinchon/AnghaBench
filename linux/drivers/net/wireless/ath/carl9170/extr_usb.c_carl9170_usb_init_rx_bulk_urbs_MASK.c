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
struct urb {int dummy; } ;
struct ar9170 {int /*<<< orphan*/  rx_anch; int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rx_pool; int /*<<< orphan*/  rx_pool_urbs; } ;

/* Variables and functions */
 int AR9170_NUM_RX_URBS_POOL ; 
 int /*<<< orphan*/  CARL9170_IDLE ; 
 int /*<<< orphan*/  CARL9170_STOPPED ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct urb* FUNC2 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ar9170 *ar)
{
	struct urb *urb;
	int i, err = -EINVAL;

	/*
	 * The driver actively maintains a second shadow
	 * pool for inactive, but fully-prepared rx urbs.
	 *
	 * The pool should help the driver to master huge
	 * workload spikes without running the risk of
	 * undersupplying the hardware or wasting time by
	 * processing rx data (streams) inside the urb
	 * completion (hardirq context).
	 */
	for (i = 0; i < AR9170_NUM_RX_URBS_POOL; i++) {
		urb = FUNC2(ar, GFP_KERNEL);
		if (!urb) {
			err = -ENOMEM;
			goto err_out;
		}

		FUNC4(urb, &ar->rx_pool);
		FUNC0(&ar->rx_pool_urbs);
		FUNC5(urb);
	}

	err = FUNC3(ar, GFP_KERNEL);
	if (err)
		goto err_out;

	/* the device now waiting for the firmware. */
	FUNC1(ar, CARL9170_STOPPED, CARL9170_IDLE);
	return 0;

err_out:

	FUNC7(&ar->rx_pool);
	FUNC7(&ar->rx_work);
	FUNC6(&ar->rx_anch);
	return err;
}