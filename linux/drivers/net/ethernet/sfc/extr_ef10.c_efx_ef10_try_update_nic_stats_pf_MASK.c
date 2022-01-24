#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__* addr; } ;
struct efx_nic {int num_mac_stats; TYPE_1__ stats_buffer; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {scalar_t__* stats; } ;
typedef  scalar_t__ __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  EF10_STAT_COUNT ; 
 size_t EF10_STAT_port_rx_bad_bytes ; 
 size_t EF10_STAT_port_rx_bytes ; 
 size_t EF10_STAT_port_rx_bytes_minus_good_bytes ; 
 size_t EF10_STAT_port_rx_good_bytes ; 
 size_t EF10_STAT_port_rx_nodesc_drops ; 
 scalar_t__ EFX_MC_STATS_GENERATION_INVALID ; 
 size_t MC_CMD_MAC_GENERATION_START ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  efx_ef10_stat_desc ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,scalar_t__*) ; 
 int /*<<< orphan*/  mask ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct efx_nic *efx)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	FUNC0(mask, EF10_STAT_COUNT);
	__le64 generation_start, generation_end;
	u64 *stats = nic_data->stats;
	__le64 *dma_stats;

	FUNC1(efx, mask);

	dma_stats = efx->stats_buffer.addr;

	generation_end = dma_stats[efx->num_mac_stats - 1];
	if (generation_end == EFX_MC_STATS_GENERATION_INVALID)
		return 0;
	FUNC6();
	FUNC3(efx_ef10_stat_desc, EF10_STAT_COUNT, mask,
			     stats, efx->stats_buffer.addr, false);
	FUNC6();
	generation_start = dma_stats[MC_CMD_MAC_GENERATION_START];
	if (generation_end != generation_start)
		return -EAGAIN;

	/* Update derived statistics */
	FUNC2(efx,
				     &stats[EF10_STAT_port_rx_nodesc_drops]);
	stats[EF10_STAT_port_rx_good_bytes] =
		stats[EF10_STAT_port_rx_bytes] -
		stats[EF10_STAT_port_rx_bytes_minus_good_bytes];
	FUNC4(&stats[EF10_STAT_port_rx_bad_bytes],
			     stats[EF10_STAT_port_rx_bytes_minus_good_bytes]);
	FUNC5(efx, stats);
	return 0;
}