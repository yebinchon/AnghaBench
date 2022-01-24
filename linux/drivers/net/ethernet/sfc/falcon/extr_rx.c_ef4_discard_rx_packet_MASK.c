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
struct ef4_rx_buffer {int dummy; } ;
struct ef4_channel {int dummy; } ;

/* Variables and functions */
 struct ef4_rx_queue* FUNC0 (struct ef4_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_rx_queue*,struct ef4_rx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_channel*,struct ef4_rx_buffer*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct ef4_channel *channel,
				  struct ef4_rx_buffer *rx_buf,
				  unsigned int n_frags)
{
	struct ef4_rx_queue *rx_queue = FUNC0(channel);

	FUNC2(channel, rx_buf, n_frags);

	FUNC1(rx_queue, rx_buf, n_frags);
}