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
struct sw_rx_data {scalar_t__ page_offset; int /*<<< orphan*/  data; int /*<<< orphan*/  mapping; } ;
struct qede_rx_queue {scalar_t__ rx_buf_seg_size; int /*<<< orphan*/  data_direction; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_rx_queue*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_rx_queue*,struct sw_rx_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct qede_rx_queue *rxq,
					 struct sw_rx_data *curr_cons)
{
	/* Move to the next segment in the page */
	curr_cons->page_offset += rxq->rx_buf_seg_size;

	if (curr_cons->page_offset == PAGE_SIZE) {
		if (FUNC4(FUNC2(rxq, true))) {
			/* Since we failed to allocate new buffer
			 * current buffer can be used again.
			 */
			curr_cons->page_offset -= rxq->rx_buf_seg_size;

			return -ENOMEM;
		}

		FUNC0(rxq->dev, curr_cons->mapping,
			       PAGE_SIZE, rxq->data_direction);
	} else {
		/* Increment refcount of the page as we don't want
		 * network stack to take the ownership of the page
		 * which can be recycled multiple times by the driver.
		 */
		FUNC1(curr_cons->data);
		FUNC3(rxq, curr_cons);
	}

	return 0;
}