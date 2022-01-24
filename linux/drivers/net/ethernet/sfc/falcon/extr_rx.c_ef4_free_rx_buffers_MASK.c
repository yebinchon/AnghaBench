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
struct ef4_rx_queue {int dummy; } ;
struct ef4_rx_buffer {int /*<<< orphan*/ * page; } ;

/* Variables and functions */
 struct ef4_rx_buffer* FUNC0 (struct ef4_rx_queue*,struct ef4_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ef4_rx_queue *rx_queue,
				struct ef4_rx_buffer *rx_buf,
				unsigned int num_bufs)
{
	do {
		if (rx_buf->page) {
			FUNC1(rx_buf->page);
			rx_buf->page = NULL;
		}
		rx_buf = FUNC0(rx_queue, rx_buf);
	} while (--num_bufs);
}