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
struct ef4_rx_queue {int /*<<< orphan*/  ptr_mask; } ;
struct ef4_rx_buffer {int dummy; } ;

/* Variables and functions */
 struct ef4_rx_buffer* FUNC0 (struct ef4_rx_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline struct ef4_rx_buffer *
FUNC2(struct ef4_rx_queue *rx_queue, struct ef4_rx_buffer *rx_buf)
{
	if (FUNC1(rx_buf == FUNC0(rx_queue, rx_queue->ptr_mask)))
		return FUNC0(rx_queue, 0);
	else
		return rx_buf + 1;
}