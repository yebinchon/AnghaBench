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
struct efx_rx_queue {int dummy; } ;
struct efx_rx_buffer {int dummy; } ;
struct efx_channel {int dummy; } ;

/* Variables and functions */
 struct efx_rx_queue* FUNC0 (struct efx_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_rx_queue*,struct efx_rx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_channel*,struct efx_rx_buffer*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct efx_channel *channel,
				  struct efx_rx_buffer *rx_buf,
				  unsigned int n_frags)
{
	struct efx_rx_queue *rx_queue = FUNC0(channel);

	FUNC2(channel, rx_buf, n_frags);

	FUNC1(rx_queue, rx_buf, n_frags);
}