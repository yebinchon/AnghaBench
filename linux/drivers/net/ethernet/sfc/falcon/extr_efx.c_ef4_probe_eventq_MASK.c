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
struct ef4_nic {scalar_t__ txq_entries; scalar_t__ rxq_entries; int /*<<< orphan*/  net_dev; } ;
struct ef4_channel {scalar_t__ eventq_mask; int /*<<< orphan*/  channel; struct ef4_nic* efx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long EF4_MAX_EVQ_SIZE ; 
 int /*<<< orphan*/  EF4_MIN_EVQ_SIZE ; 
 int FUNC1 (struct ef4_channel*) ; 
 scalar_t__ FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 unsigned long FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct ef4_channel *channel)
{
	struct ef4_nic *efx = channel->efx;
	unsigned long entries;

	FUNC3(efx, probe, efx->net_dev,
		  "chan %d create event queue\n", channel->channel);

	/* Build an event queue with room for one event per tx and rx buffer,
	 * plus some extra for link state events and MCDI completions. */
	entries = FUNC4(efx->rxq_entries + efx->txq_entries + 128);
	FUNC0(entries > EF4_MAX_EVQ_SIZE);
	channel->eventq_mask = FUNC2(entries, EF4_MIN_EVQ_SIZE) - 1;

	return FUNC1(channel);
}