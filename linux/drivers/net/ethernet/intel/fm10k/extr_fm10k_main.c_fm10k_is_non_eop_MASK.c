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
typedef  union fm10k_rx_desc {int dummy; } fm10k_rx_desc ;
typedef  int u32 ;
struct fm10k_ring {int next_to_clean; int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_RXD_STATUS_EOP ; 
 int /*<<< orphan*/  FUNC0 (struct fm10k_ring*,int) ; 
 int /*<<< orphan*/  FUNC1 (union fm10k_rx_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct fm10k_ring *rx_ring,
			     union fm10k_rx_desc *rx_desc)
{
	u32 ntc = rx_ring->next_to_clean + 1;

	/* fetch, update, and store next to clean */
	ntc = (ntc < rx_ring->count) ? ntc : 0;
	rx_ring->next_to_clean = ntc;

	FUNC3(FUNC0(rx_ring, ntc));

	if (FUNC2(FUNC1(rx_desc, FM10K_RXD_STATUS_EOP)))
		return false;

	return true;
}