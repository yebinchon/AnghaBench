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
struct urb {int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer; } ;
struct ar9170 {int /*<<< orphan*/  rx_pool_urbs; int /*<<< orphan*/  rx_pool; int /*<<< orphan*/  rx_work_urbs; int /*<<< orphan*/  rx_work; } ;

/* Variables and functions */
 int AR9170_NUM_RX_URBS_POOL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 struct urb* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ar9170 *ar)
{
	struct urb *urb;
	int i;

	for (i = 0; i < AR9170_NUM_RX_URBS_POOL; i++) {
		urb = FUNC7(&ar->rx_work);
		if (!urb)
			break;

		FUNC1(&ar->rx_work_urbs);
		if (FUNC0(ar)) {
			FUNC3(ar, urb->transfer_buffer,
				    urb->actual_length);
		}

		FUNC5(urb, &ar->rx_pool);
		FUNC2(&ar->rx_pool_urbs);

		FUNC6(urb);

		FUNC4(ar, GFP_ATOMIC);
	}
}