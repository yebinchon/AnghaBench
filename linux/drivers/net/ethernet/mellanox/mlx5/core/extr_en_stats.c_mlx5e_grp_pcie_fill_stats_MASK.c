#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  pcie_perf_counters; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct mlx5e_priv {TYPE_2__ stats; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUM_PCIE_PERF_COUNTERS ; 
 int NUM_PCIE_PERF_COUNTERS64 ; 
 int NUM_PCIE_PERF_STALL_COUNTERS ; 
 int /*<<< orphan*/  pcie_outbound_stalled ; 
 int /*<<< orphan*/  pcie_perf_stall_stats_desc ; 
 int /*<<< orphan*/  pcie_perf_stats_desc ; 
 int /*<<< orphan*/  pcie_perf_stats_desc64 ; 
 int /*<<< orphan*/  pcie_performance_group ; 
 int /*<<< orphan*/  tx_overflow_buffer_pkt ; 

__attribute__((used)) static int FUNC3(struct mlx5e_priv *priv, u64 *data,
				     int idx)
{
	int i;

	if (FUNC2((priv)->mdev, pcie_performance_group))
		for (i = 0; i < NUM_PCIE_PERF_COUNTERS; i++)
			data[idx++] =
				FUNC0(&priv->stats.pcie.pcie_perf_counters,
						    pcie_perf_stats_desc, i);

	if (FUNC2((priv)->mdev, tx_overflow_buffer_pkt))
		for (i = 0; i < NUM_PCIE_PERF_COUNTERS64; i++)
			data[idx++] =
				FUNC1(&priv->stats.pcie.pcie_perf_counters,
						    pcie_perf_stats_desc64, i);

	if (FUNC2((priv)->mdev, pcie_outbound_stalled))
		for (i = 0; i < NUM_PCIE_PERF_STALL_COUNTERS; i++)
			data[idx++] =
				FUNC0(&priv->stats.pcie.pcie_perf_counters,
						    pcie_perf_stall_stats_desc, i);
	return idx;
}